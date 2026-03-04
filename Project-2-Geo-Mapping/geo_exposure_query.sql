/* Senior Data Analyst - Portfolio Project 2
Goal: Aggregate TIV (Total Insured Value) by Canadian FSA to identify CAT accumulation.
*/

SELECT 
    LEFT(postal_code, 3) AS fsa, -- Extracting the FSA (e.g., N2J, B3H)
    province,
    COUNT(policy_id) AS policy_count,
    SUM(total_insured_value) AS tiv_exposure,
    -- Senior Touch: Calculating the 'Risk Density'
    SUM(total_insured_value) / COUNT(policy_id) AS avg_concentration_per_policy
FROM core_insurance_db.inforce_policies
WHERE status = 'Active'
  AND province IN ('Ontario', 'Nova Scotia') -- Specific to Heartland's footprint
GROUP BY 1, 2
HAVING SUM(total_insured_value) > 5000000 -- Focus only on high-exposure zones
ORDER BY tiv_exposure DESC;
