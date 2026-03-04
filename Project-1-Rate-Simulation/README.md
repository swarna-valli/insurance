# Project 1: Actuarial Rate Change Simulation
**Focus:** Actuarial Support, Data Integrity, & Impact Analysis

## 🎯 Business Problem
The Actuarial team proposed a 5% rate increase for the Ontario Home Insurance book. My task was to simulate this change across 50,000 "In-Force" policies to identify "Rate Dislocation" (outlier increases) before the regulatory filing.

## 🛠️ Technical Workflow
1. **Data Extraction:** Queried the production database to extract active policies, premiums, and risk factors.
2. **Simulation (SAS):** Used `PROC SQL` to apply the new rating logic to the current dataset.
3. **Data Quality Audit:** Implemented checks to flag "impossible" results (e.g., premium decreases during a rate hike).

## 📊 Key Results
* **Total Premium Impact:** Projected a $2.4M increase in Annual Written Premium.
* **Dislocation Identified:** Flagged 450 policies that would have seen a >20% increase due to overlapping discount expirations.
* **Outcome:** The Underwriting team implemented a "Transition Cap," preserving a projected 5% of at-risk renewals.

## 💻 Code Samples
* [SQL Data Extraction](./extract_data.sql)
* [SAS Simulation Script](./rate_simulation.sas)
Click Commit changes.

Step 2: Upload the "Evidence" (The Code)
Now you need to put the actual SQL and SAS scripts into that folder so they can see your coding style.

Go into your new Project-1-Rate-Simulation folder.

Click Add file > Create new file.

Name it: rate_simulation.sas

Paste a simplified version of the SAS code we discussed earlier (the PROC SQL block).

Commit changes.

Step 3: Why this works for Heartland
By organizing it this way, you are demonstrating three specific skills from the job description:

"Document data definitions and lineage": You aren't just dumping code; you are explaining the "Why."

"Support system testing": You are showing you can test rate changes.

"Translate business questions into analytical tasks": Your README shows you understand the business goal (Retention/Revenue), not just the math.
