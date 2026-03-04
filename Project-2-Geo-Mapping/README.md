# Project 2: Geographic Catastrophe (CAT) Risk Mapping
**Focus:** Data Engineering, Spatial Analysis, & Solvency Protection

## 🎯 Business Problem
To protect the Mutual's surplus, the Underwriting team needed to identify "Accumulation Risk"—areas where we have too much financial exposure in a single flood or storm zone (e.g., the Grand River floodplain in Ontario).

## 🛠️ Technical Workflow
1. **Data Engineering:** Joined Policy data with Canadian Geographic FSAs (Forward Sortation Areas).
2. **Aggregation:** Used SQL to calculate "Total Insured Value" (TIV) by postal code.
3. **Risk Scoring:** Assigned "Flood Risk Scores" to specific FSAs based on historical CAT data.

## 📊 Key Results
* **Concentration Found:** Identified $18M in exposure within high-risk flood zones in the N2J (Waterloo) and B3H (Halifax) FSAs.
* **Strategic Impact:** Provided a heatmap that led to a 10% adjustment in reinsurance limits for high-density zones.
