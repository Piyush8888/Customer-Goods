Question 2
What is the percentage of unique product increase in 2021 vs. 2020? 
Ans.>> SELECT X.A AS unique_product_2020, Y.B AS unique_products_2021, ROUND((B-A)*100/A, 2) AS percentage_chg
       FROM
     (
      (SELECT COUNT(DISTINCT(product_code)) AS A FROM gdb023.fact_sales_monthly
      WHERE fiscal_year = 2020) X,
      (SELECT COUNT(DISTINCT(product_code)) AS B FROM gdb023.fact_sales_monthly
      WHERE fiscal_year = 2021) Y 
	 )
