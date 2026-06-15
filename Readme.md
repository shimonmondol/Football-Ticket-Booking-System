# Football Ticket Booking System - Database Design & SQL Queries
This repository contains my submission for the Football Ticket Booking System assignment. It documents **what tasks I had to complete** and provides a step-by-step guide on **how the system works** from database initialization to advanced analytical querying.

## 📋 Section 1: My Assignment Work (What I Did)
My core objective for this assignment was to transition a business-logic description of a football ticket application into a fully functional relational database. My work consisted of two core parts:

### 1. Database Architecture & ERD Design
I designed a three-table entity relational layout using Crow's Foot notation mapping out these real-world conditions:
* **Users Table**: Holds administrative (`Ticket Manager`) and customer (`Football Fan`) profiles.
* **Matches Table**: Manages the scheduling, tournament category, base pricing, and live seat-availability status.
* **Bookings Table**: Functions as a central transaction ledger linking users to their matches with unique seat allocations.
* **Cardinality Enforcements**: Enforced a **1-to-Many** relationship for Users-to-Bookings and Matches-to-Bookings, while maintaining an **atomic 1-to-1 row logic** mapping a single user to a single seat for a specific match.

### 2. SQL Database Engineering
I translated the logical rules into executable SQL programming code across 3 milestones:
* **Data Definition (DDL)**: Wrote scripts to generate tables while securing referential integrity through Primary Keys, Foreign Keys, and state-validation checks.
* **Data Mocking (DML)**: Seeded the tables with explicit test profiles, match logistics, and realistic payment variables (including missing/NULL variables).
* **Intermediate & Advanced Queries**: Developed 7 standalone analytical queries to solve targeted business problems using filters, string matches, error handling, inner/outer table joins, dynamic aggregations, and pagination.

## 🛠️ Section 2: Implementation & Execution (How It Works)

To deploy, modify, or test this project, execute the SQL scripts sequentially inside your database management environment (PostgreSQL, MySQL, SQLite, etc.).

### Step 1: Initialize the Environment & Seeds
The foundational block below to clear out prior instances, build the tables with their exact safety constraints, and load the assignment data.

### Step 2: Running the Operational Queries
Open my environment's SQL query editor (QUERY.sql) and run any of the following queries to test specific analytical requirements.

### Step 3: Verification Checkpoint
When i execute the queries above, my database terminal outputs should precisely mirror the target values required in my project brief (e.g., Query 1 returning matches 101 and 103; Query 5 listing Jannat Ara alongside a NULL booking indicator).