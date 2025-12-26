# Bank Transaction Statement System

A SQL-first project that models bank accounts and transactions and supports common analytical queries such as account statements, balances, and spending summaries.

The focus of this project is relational schema design and practical SQL querying rather than application-layer code.

---

## Project Scope

- Design a normalized relational schema for bank accounts and transactions
- Insert controlled, synthetic sample data
- Write SQL queries commonly used in banking and financial reporting
- Keep the system simple, explicit, and query-driven

---

## Database Schema

The schema consists of two core tables:

- **accounts**: Stores account-level details
- **transactions**: Stores individual debit and credit records linked to accounts

Foreign key relationships ensure referential integrity between accounts and transactions.

---

## Sample Data

Synthetic sample data is provided to simulate real-world bank activity, including:

- Salary credits
- Bill payments
- ATM withdrawals
- Transfers
- Category-based spending

This data is intended purely for demonstration and analysis.

---

## Analytical Queries

The project includes SQL queries for:

- Full transaction statements for an account
- Monthly spending summaries grouped by category
- Account balance calculation using debit and credit logic

These queries reflect common reporting needs in financial systems.

---

## Technologies Used

- SQL (MySQL-compatible)
- Relational data modeling
- Aggregate and conditional queries

---

## Notes

This project is intentionally SQL-focused. It does not include application logic or UI components and is designed to demonstrate data modeling and query proficiency.
