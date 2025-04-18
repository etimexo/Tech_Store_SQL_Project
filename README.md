# Tech Store SQL Analysis
___
# 📌 Project Overview

This project involves analyzing a retail business's database to extract meaningful insights and answer real-world business questions. The data includes customer information, orders, payments, and products.

## 🗃️ Dataset Description

The database consists of the following tables:
credit_card_data - Contains information about customer credit card usage.
customerinfo - Stores details about customers, including their city, gender, and personal information.
payments - Tracks customer payment transactions.
orders - Holds records of customer orders, including order quantity and date.
products - Lists product details such as unit price, category, and descriptions.

#### 📂 Database Setup & Creation of Tables

1️⃣ Creating Tables
The code used to create the tables can be seen gotten here

2️⃣ Importing Data from Excel

COPY customerinfo FROM '/path/to/customerinfo.csv' DELIMITER ',' CSV HEADER;

COPY products FROM '/path/to/products.csv' DELIMITER ',' CSV HEADER;

COPY orders FROM '/path/to/orders.csv' DELIMITER ',' CSV HEADER;

COPY payments FROM '/path/to/payments.csv' DELIMITER ',' CSV HEADER;

COPY credit_card_data FROM '/path/to/credit_card_data.csv' DELIMITER ',' CSV HEADER;

# 📊 Business Questions & SQL Queries

1️⃣ Top Spending Customers

Question: Identify the top customers based on their total spending in 2024.
Query:

![image_alt](https://github.com/etimexo/Tech_Store_SQL_Project/blob/main/Code_snippets/question_1.png)

Query Result:

![image_alt](https://github.com/etimexo/Tech_Store_SQL_Project/blob/main/Query_results/query_1.png)

2️⃣ Revenue by City
Question: Which cities generate the highest revenue from paid orders?
![image_alt](https://github.com/etimexo/Tech_Store_SQL_Project/blob/main/Code_snippets/qustion_2.png)

Query Result:

![image_alt](https://github.com/etimexo/Tech_Store_SQL_Project/blob/main/Query_results/query_2.png)

3️⃣ Top 5 Best-Selling Products

Question: What are the top 5 best-selling products in terms of revenue?
![image_alt](https://github.com/etimexo/Tech_Store_SQL_Project/blob/main/Code_snippets/qustion_3.png)

Query Result:

![image_alt](https://github.com/etimexo/Tech_Store_SQL_Project/blob/main/Query_results/query_3.png)

4️⃣ Customers with Unpaid Orders

Question: Identify customers who placed orders but never made a payment.

![image_alt](https://github.com/etimexo/Tech_Store_SQL_Project/blob/main/Code_snippets/qustion_4.png)

Query Result:

![image_alt](https://github.com/etimexo/Tech_Store_SQL_Project/blob/main/Query_results/query_4.png)

5️⃣ Order Volume Analysis by Category

Question: What is the average and total number of orders per product category?

![image_alt](https://github.com/etimexo/Tech_Store_SQL_Project/blob/main/Code_snippets/qustion_5.png)

Query Result:

![image_alt](https://github.com/etimexo/Tech_Store_SQL_Project/blob/main/Query_results/query_5.png)

6️⃣ Revenue by Product Category

Question: Which product categories generate the highest revenue?

![image_alt](https://github.com/etimexo/Tech_Store_SQL_Project/blob/main/Code_snippets/qustion_6.png)

Query Result:

![image_alt](https://github.com/etimexo/Tech_Store_SQL_Project/blob/main/Query_results/query_6.png)

7️⃣ Revenue Breakdown by Gender

Question: What is the total revenue generated by male and female customers?

![image_alt](https://github.com/etimexo/Tech_Store_SQL_Project/blob/main/Code_snippets/qustion_7.png)

Query Result:

![image_alt](https://github.com/etimexo/Tech_Store_SQL_Project/blob/main/Query_results/query_7.png)

# 📌 Key Insights and Recommendations

1. Top-Spending Customers:
High-value customers were identified through total purchase analysis. To retain and further engage these customers, consider implementing appreciation strategies such as exclusive rewards, loyalty points, or personalized offers.
For customers with lower purchase volumes, targeted marketing campaigns—like promotional discounts or first-time buyer incentives—can increase their engagement and encourage more purchases.

2. Revenue by City:
Cities contributing the most to revenue should be prioritized for business expansion, localized promotions, and increased inventory allocation.
For underperforming cities, strategies such as location-based advertising, community engagement, or localized discounts could be introduced to boost visibility and sales.

3. Best-Selling Products:
The analysis revealed the top-selling products based on revenue, which indicates customer preferences. These high-demand products should be stocked adequately and potentially promoted further to increase sales.
For products with lower sales, consider running strategic marketing campaigns, offering limited-time discounts, or improving product visibility both online and in-store.

4. Unpaid Orders:
There were 141 records of unpaid orders, indicating a potential revenue leak. A follow-up mechanism should be put in place to remind customers of pending payments.
Additionally, implementing a time-bound order policy—where unpaid orders are automatically canceled after a specific period—can help maintain inventory flow and ensure product availability for other customers. This policy should be clearly communicated to customers during the checkout process.

5. Order Volume by Category:
Understanding average and total orders across product categories can assist in smarter stock management and forecasting. Categories with high order volumes should have sufficient inventory to meet demand, while those with lower volumes can be evaluated for promotion or potential discontinuation.

6. Revenue by Product Category:
Categories generating the highest revenue represent high-margin opportunities. Businesses should consider investing more in these categories, including bundling offers or exclusive product lines to maximize profitability.

7. Revenue by Gender:
The gender-wise revenue breakdown provides insight into customer demographics. This data can be used to tailor marketing strategies—such as personalized email campaigns or product recommendations—to better resonate with different gender segments.
___

# How to Use This Project
- Clone the repository.
- Run the SQL queries in a PostgreSQL or MySQL environment.
- Modify queries based on business needs.
- Use the insights to make data-driven decisions.

### Thanks for Reading  
___
# Author: Obisesan Elijah Timilehin
## [LinkedIn Profile](www.linkedin.com/in/teoso)
## [Mail Me](elijahobisesan01@gmail.com)

