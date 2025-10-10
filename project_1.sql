SELECT * FROM bank_loan_data

/*SELECT  
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END)*100)
    /
    COUNT(id) AS Good_loan_percentage
FROM bank_loan_data

SELECT COUNT(id) FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

SELECT SUM(total_payment) AS Good_Loan_Total_Payment FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current' */

/*SELECT  
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END)*100.0)
    /
    COUNT(id) AS Bad_loan_percentage
FROM bank_loan_data

SELECT COUNT(id) AS bank_bad_loan_application FROM bank_loan_data
WHERE loan_status = 'Charged Off'

SELECT SUM(loan_amount) AS bad_loan_funded_amount FROM bank_loan_data
WHERE loan_status = 'Charged Off'

SELECT SUM(total_payment) AS amount_recieved FROM bank_loan_data
WHERE loan_status = 'Charged Off'*/

/*SELECT 
        loan_status,
        COUNT(id) AS Total_Loan_application,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti* 100) AS DTI
FROM  
        bank_loan_data
GROUP BY
        loan_status*/

SELECT  
        MONTH(issue_date) AS Month_Number,
        DATENAME(MONTH, issue_date) AS Month_Name,
        COUNT(id) AS Total_Loan_Application,
        SUM(loan_amount) AS Total_Funded_Amount,
        SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)

SELECT  
        term,
        COUNT(id) AS Total_Loan_Application,
        SUM(loan_amount) AS Total_Funded_Amount,
        SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY term
ORDER BY term

SELECT  
        emp_length,
        COUNT(id) AS Total_Loan_Application,
        SUM(loan_amount) AS Total_Funded_Amount,
        SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY emp_length
ORDER BY COUNT(id) DESC

SELECT  
        purpose,
        COUNT(id) AS Total_Loan_Application,
        SUM(loan_amount) AS Total_Funded_Amount,
        SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY  purpose
ORDER BY COUNT(id) DESC

SELECT  
        home_ownership,
        COUNT(id) AS Total_Loan_Application,
        SUM(loan_amount) AS Total_Funded_Amount,
        SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
WHERE grade = 'A'
GROUP BY  home_ownership
ORDER BY COUNT(id) DESC