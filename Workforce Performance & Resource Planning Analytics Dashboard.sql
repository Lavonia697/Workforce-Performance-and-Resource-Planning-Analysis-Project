# creating the performance and resource planning database
CREATE DATABASE performance_and_resource_planning;

# setting the performance and resource planning database as a default for the existing session
USE performance_and_resource_planning;

# creating the projects table
CREATE TABLE projects (
	project_id 	VARCHAR(5) PRIMARY KEY,
    project_name VARCHAR(20),
    project_type VARCHAR(20),
    start_date DATE,
    end_date DATE,
    budget DECIMAL(12,2),
    priority VARCHAR(20),
    status VARCHAR (20)
    );
    
# creating the tasks table
CREATE TABLE tasks (
    task_id VARCHAR (5) PRIMARY KEY,
    project_id VARCHAR (5),
    task_name VARCHAR (20),
    planned_start DATE,
    planned_end DATE,
    actual_start DATE,
    actual_end DATE,
    task_status VARCHAR (20)
    );
    
# creating resources table
CREATE TABLE resources (
	resource_id VARCHAR (5) PRIMARY KEY,
    name VARCHAR (20),
    role VARCHAR (20),
    skill_level VARCHAR (20),
    hourly_rate INT
    );
    
# creating resource_allocation table
CREATE TABLE resource_allocation (
	allocation_id VARCHAR (5) PRIMARY KEY,
    project_id VARCHAR (5),
    resource_id VARCHAR (5),
    task_id VARCHAR (5),
    allocated_hours INT,
    actual_hours INT
    );
    
# connecting the tasks table and the project table via project id
ALTER TABLE tasks
ADD CONSTRAINT fk_tasks_project
FOREIGN KEY (project_id) REFERENCES projects(project_id);

# connecting the resource allocation table and the project table via project id
ALTER TABLE resource_allocation
ADD CONSTRAINT fk_alloc_project
FOREIGN KEY (project_id) REFERENCES projects(project_id);

# connecting the resource_allocation table and the tasks table via task id
ALTER TABLE resource_allocation
ADD CONSTRAINT fk_alloc_task
FOREIGN KEY (task_id) REFERENCES tasks(task_id);

# connecting the resource_allocation table to the resources table via resource id
ALTER TABLE resource_allocation
ADD CONSTRAINT fk_alloc_resource
FOREIGN KEY (resource_id) REFERENCES resources(resource_id);

# all junior painters
select 
resource_id,
hourly_rate
from resources
where role = 'Painter'
and skill_level = 'Junior'
order by hourly_rate desc;

# average hourly wage for each role
SELECT
	role,
    ROUND(AVG(hourly_rate),2) AS avg_hourly_rate
FROM resources
GROUP BY role
ORDER BY avg_hourly_rate DESC;

# all junior levels with hourly rate > 300
SELECT
	resource_id
FROM  resources
WHERE hourly_rate > 300
AND  skill_level = 'Junior';

# case statement defining experience level
SELECT
	r.role,
    SUM(p.budget) AS project_cost
FROM resources r 
JOIN resource_allocation ra 
	ON r.resource_id = ra.resource_id
JOIN projects p
	ON p.project_id = ra.project_id
GROUP BY role
ORDER BY project_cost desc;
 
 # roles and their respective project cost
SELECT
	name,
	CASE
		WHEN skill_level = 'Senior' THEN 'Lead'
        ELSE 'Support'
	END AS experience_level
FROM resources;

# grouping Delayed from Completed tasks
SELECT 
	COUNT(*) AS total_tasks,
    SUM(CASE WHEN task_status = 'Delayed' THEN 1 ELSE 0 END) AS delayed_count,
    SUM(CASE WHEN task_status = 'Completed' THEN 1 ELSE 0 END) AS completed_count
FROM tasks;

# delay duration
SELECT
	SUM(actual_end - planned_end) AS column_delay_duration
from tasks;

# task name and their task status for project id 13
SELECT
	task_name,
    task_status
FROM tasks
WHERE project_id = 13;

# workers assigned to task id 100
SELECT 
r.name,
t.task_id
FROM  resources r
JOIN resource_allocation ra
	ON ra.resource_id = r.resource_id
JOIN tasks t
	ON ra.project_id = t.project_id
WHERE t.task_id = 100;

# project allocation analysis
SELECT
	ra.resource_id,
    t.task_id,
    actual_hours,
    allocated_hours,
    actual_hours - allocated_hours AS utilisation_variance
FROM resource_allocation ra 
JOIN tasks t
	ON ra.project_id = t.project_id;

# workers total working hours
SELECT
	r.name,
    SUM(ra.actual_hours) AS total_hours_worked
FROM resources r
JOIN resource_allocation ra
	ON r.resource_id = ra.resource_id
    GROUP BY r.name;
  
# total cost for project id 1
SELECT
	p.project_id,
SUM(ra.actual_hours * r.hourly_rate) AS total_cost
FROM resources r
JOIN resource_allocation ra
	ON r.resource_id = ra.resource_id
JOIN projects p
	ON p.project_id = ra.project_id
WHERE p.project_id = 1;

# delayed projects
SELECT
	ra.resource_id
FROM resource_allocation ra
JOIN tasks t
	ON ra.project_id = t.project_id
WHERE t.task_status = 'Delayed';

# total cost of all projects
SELECT
	p.project_type,
	SUM(r.hourly_rate * ra.actual_hours) AS total_cost
FROM projects p
JOIN resource_allocation ra 
	ON p.project_id = ra.project_id
JOIN resources r 
	ON ra.resource_id = r.resource_id
GROUP BY p.project_type;



























































