# Workforce-Performance-and-Resource-Planning-Analysis
## Multi-Project Health | Resource Utilisation | Delay Diagnostics
![Alt Text](https://github.com/Lavonia697/Workforce-Performance-and-Resource-Planning-Analysis-Project/blob/main/screenshots/Overview%20Dashboard.png?raw=true)


## Project Overview
This project analyzes multi-project performance, resource utilization, timelines, and cost efficiency within a blue-collar operations environment.

The goal is to provide data-driven insights that help organizations:
- Optimize workforce allocation
- Identity project delays early
- Control costs and improve efficiency
- Make better strategic decisions across project portfolios

---

## The Business Problem
Organizations managing complex, concurrent project portfolios frequently suffer from blind spots in resource distribution. Without centralised operational analytics, management faces:
- Project delays due to poor baseline scheduling.
- Hidden resource allocation imbalances (severely overworked vs. underutilised personnel).
- Creeping budget overruns across overlapping timelines.
- Lack of visibility into project performance for executive scheduling.

  ---

  ## Data Architecture & Star Schema
  The underlying data infrastructure consists of four tables mapped into a high-performance **Star Schema** within Power BI to ensure efficient cross_filtering across dynamic timelines.
  - **Projects:** Dimensional data capturing project attributes, macro-budgets, priorities, and status updates.
  - **Tasks:** Event-driven data capturing individual task-level schedules, and completion metrics.
  - **Resources:** Dimensional registry of the workforce, tracking specialised roles, skill levels, and hourly wages.
  - **Resource Allocation:** The core transaction bridge mapping specific workers to distinct tasks, capturing *Planned vs. Actual Hours worked*.

  ## Tools & Technologies Used
  - **Excel:**  Initial data auditing, cleaning, and preprocessing
  - **MySQL:** Database deployment, relational modeling, and table-to-table constraint verification.
  - **DAX (Data Analysis Expressions):** Engineered custom time-intelligence KPIs, capacity utilisation matrices, and performance metrics.
  - **Power BI Desktop:** Advanced data modelling, complex DAX analytics, and dashboard design.

## Data Model
**This dataset was structured into four core tables:**
- Projects - Project details, budget, priority, and status
- Tasks - Task-level timelines and completion status
- Resources - Worker roles, skill levels, and hourly rates
- Resource Allocation - Mapping of workers to tasks with planned vs actual hours

**A relational data model was implemented using:**
- Primary & Foreign Keys in MySQL
- Star schema relationships in Power BI

![Alt Text](https://github.com/Lavonia697/Workforce-Performance-and-Resource-Planning-Analysis-Project/blob/main/data%20model/Performance%20and%20Resource%20Planning%20Dashboard.png?raw=true)

    ---

 # Dashboard Structure
## 1. Portfolio Overview
Provides a high-level snapshot of project performance:
- Total Projects
- % Delayed Projects
- Budget vs Actual Cost
- Project distribution by priority
- Top delayed projects

## 2. Resource Utilization
Analyzes workforce efficiency:
- Utilization rate (113% - indicates overcapacity)
- Hours worked per employee
- Role-based workload distribution
- Worker vs Project heatmap
- Overutilized workforce detection

## 3. Timeline & Delay Analysis
Focuses on project timing and delays:
- Average delay days (3.77 days)
- On-time completion rate (24.79%)
- Delay trends over time (increasing trend identified)
- Planned vs actual duration comparison
- High-risk project identification

## 4. Cost & Efficiency Analysis
Evaluates financial performance:
- Budget vs Actual Cost
- Cost variance analysis
- Cost per project
- Efficiency analysis (Cost vs Duration)
- Cost drivers by role

---

  ## Dashboard Preview
![Alt Text](https://github.com/Lavonia697/Workforce-Performance-and-Resource-Planning-Analysis-Project/blob/main/screenshots/Overview%20Dashboard.png?raw=true)

![Alt Text](https://github.com/Lavonia697/Workforce-Performance-and-Resource-Planning-Analysis-Project/blob/main/screenshots/Project%20Timeline%20&%20Delay%20Analysis.png?raw=true)

![Alt Text](https://github.com/Lavonia697/Workforce-Performance-and-Resource-Planning-Analysis-Project/blob/main/screenshots/Resource%20Utilisation%20Dashboard.png?raw=true)

![Alt Text](https://github.com/Lavonia697/Workforce-Performance-and-Resource-Planning-Analysis-Project/blob/main/screenshots/Costs%20&%20Efficiency%20Analysis.png?raw=true)


---

## Key Insights
- High delay rate: Over 75% of tasks are delayed, indicating planning inefficiencies
- Delays increased over time, suggesting worsening project execution
- Budget overruns present, with several projects exceeding planned costs
- Resource bottlenecks identified in key roles
- The workforce is running at 113% capacity, meaning they are chronically overworked, which is directly causing bottlenecks, fatigue, and resulting 75% project delay rate. 

  ---

  ## Business Recommendations
  - Improve project planning and scheduling accuracy
  - Rebalance workloads to reduce employee overutilization
  - Increase staffing in high-demand roles
  - Implement early warning systems for delays
  - Monitor cost vs performance continuously
 
  ---


  ---

  ## How to Use
  1. Open the Power BI file
  2. Use slicers to filter by :
     - Project
     - Role
     - Project Type
  3. Hover over visuals for additional insights
  4. Explore each page for different perspectives
 
---

## About Me
Aspiring Data Analyst with a focus on:
- Operations Analytics
- Workforce Optimization
- Business Intelligence
*Passionate about turning data into actionable insights that drive decision-making*

---

## If You Like This Project
Feel free to:
- Star ⭐ the repository
- Connect with me on LinkedIn
- Share feedback

  

   





  













