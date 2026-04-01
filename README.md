# Project-Portfolio-Resource-Planning-Analysis
## Overview
This project analyzes multi-project performance, resource utilization, timelines, and cost efficiency within a blue-collar operations environment.

The goal is to provide data-driven insights that help organizations:
- Optimize workforce allocation
- Identity project delays early
- Control costs and improve efficiency
- Make better strategic decisions across project portfolios

---

## Business Problem
Organizations managing multiple projects often face:
- Delays due to poor planning
- Overworked or underutilized employees
- Budget overruns
- Lack of visibility into project performance

This dashboard solves these challenges by delivering real-time insights into project health, workforce usage, and cost efficiency

---

## Data Model
This dataset was structured into four core tables:
- Projects - Project details, budget, priority, and status
- Tasks - Task-level timelines and completion status
- Resources - Worker roles, skill levels, and hourly rates
- Resource Allocation - Mapping of workers to tasks with planned vs actual hours

A relational data model was implemented using:
- Primary & Foreign Keys in MySQL
- Star schema relationships in Power BI

  ---

  ## Tools & Technologies
  - Excel - Data cleaning & preprocessing
  - MySQL - Data storage & relational modeling
  - DAX - Advanced calculations and KPIs
  - Power BI - Data visualization & dashboard development
  - 
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

## Key Insights
- High delay rate: Over 75% of tasks are delayed, indicating planning inefficiencies
- Delays increasing over time, suggesting worsening project execution
- Workforce overutilized (113%), indicating capacity strain
- Budget overruns present, with several projects exceeding planned costs
- Resource bottlenecks identified in key roles

  ---

  ## Business Recommendations
  - Improve project planning and scheduling accuracy
  - Rebalance workloads to reduce employee overutilization
  - Increase staffing in high-demand roles
  - Implement early warning systems for delays
  - Monitor cost vs performance continuously
 
  ---

  ## Dashboard Preview
![Alt Text](<screenshots/Overview Dashboard.png>)
![Alt Text](<screenshots/Resource Utilization Dashboard.png>)
![Alt Text](<screenshots/Project Timeline & Delay Analysis.png>)
![Alt Text](<screenshots/Cost & Efficiency Analysis.png>)

---

## What This Project Demonstrates
- End-to-end data analysis workflow
- Strong understanding of data modeling & relationships
- Ability to translate data into business insights
- Advanced Power BI skills (DAX, heatmaps, KPIs, tooltips)
- Real-world application of operations analytics

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

  

   





  













