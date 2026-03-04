/* Audit Script: Data Integrity for CAT Mapping
Goal: Catch anomalies in postal codes and insured values.
*/

SELECT policy_id, postal_code, total_insured_value
FROM inforce_policies
WHERE 
    -- 1. Check for invalid Canadian Postal Code formats
    postal_code NOT LIKE '[A-Z][0-9][A-Z] [0-9][A-Z][0-9]' 
    -- 2. Check for impossible insured values
    OR total_insured_value <= 0
    -- 3. Check for 'Ghost' policies (Active status but no premium)
    OR (status = 'Active' AND annual_premium = 0);
