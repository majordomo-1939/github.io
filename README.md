# github.io
Project Title: JFCoop Membership Management System
Project Overview

The JFCoop Membership Management System is a SQL-based database created for a fictional cooperative society, JFCoop. The database stores and manages data related to members, transactions, loans, and cooperative activities. This system demonstrates proficiency in designing, managing, and querying relational databases.
Project Goals

    To design a database structure that efficiently stores and manages cooperative data.
    To demonstrate SQL skills in data modeling, query writing, and database management.
    To provide example SQL queries and operations that might be used in a real-world cooperative database.
    Database Design

The project includes 10 main tables to represent different areas of cooperative management:

    Members (JFCoopMembersTable) - Stores member profiles, including personal and contact information.
    Loans (JFMemberLoans) - Records loan information, including loan type, amount, interest rate, and repayment status.
    Transactions (JFCoopTransactions) - Manages member transactions, including deposits, withdrawals, and transfers.
    Savings (JFCoopMemberSavings) - Details about each member’s savings accounts.
    Payments (dbo.Payments) - Tracks payment records for loans and dues.
    Products (JFCoopProducts) - Catalog of products available for purchase by members.
    Inventory (Inventory) - Manages stock levels of products within the cooperative.
    Employee (dbo.JFCoopEmployee) - Stores employee details and roles within the cooperative.
    Feedback (dbo.Feedback) - Stores member feedback on products and services.
    Project Features

    Table Structure and Descriptions
        Each table is designed with appropriate data types, primary keys, and foreign keys.
        Descriptions and sample data for each table are included to demonstrate the table's purpose.

    Sample Queries
        Member Profiles: Retrieve specific member information.
        Loan Summary: View loan status, including outstanding amounts.
        Monthly Transactions: View and analyze monthly transaction details.
        Inventory Management: Track product stock levels and generate restocking alerts.
        Feedback Analysis: Summarize member feedback on products.

    Stored Procedures and Functions
        CalculateLoanInterest: Calculate interest on outstanding loans for each member.
        GenerateMonthlyReport: A monthly summary of cooperative transactions and balances.
        TrackInventory: Identify products with low inventory levels.

    Views
        ActiveMembersView: Shows a list of members who are currently active.
        LoanSummaryView: Summarizes the loan details, including interest accrued and remaining balance.
        MonthlyTransactionView: Aggregates transaction data on a monthly basis for reporting.

    Triggers
        BeforeInsertTransaction: Ensures transaction values are within an acceptable range before recording them.
        AfterLoanApproval: Updates member status or sends a notification when a loan is approved.
