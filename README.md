## Book Publisher SQL Project

This project was developed as a **data modeling and SQL practice exercise**, simulating a complete publishing system with **authors, books, publishers, clients, and orders**.
The goal is to demonstrate a solid understanding of **relational database design**, **referential integrity**, and **query writing** for analysis and data exploration.

---

## Objective

Design and implement a **relational database** capable of managing publishing data — from books and their authors to clients and sales.
The project covers every stage: **conceptual modeling**, **SQL schema creation**, **data population**, and **query development**.

---

## About the Project

The **Book Publisher Database** represents a real-world publishing system, showing how multiple entities connect through relationships such as one-to-many and many-to-many.

It was created as part of my learning path in **Data Analytics** and **Data Engineering**, applying best practices in SQL development and relational modeling.

---

## Project Structure

```
book_publisher_project/
│
├── sql/                     # SQL scripts
│   ├── create_tables_db_book_publisher.sql   → database schema creation
│   ├── insert_data_db_book_publisher.sql     → sample data insertion
│   └── queries_db_book_publisher.sql         → SQL exercises and analysis queries
│
├── docs/                    # Documentation and references
│   ├── base_text_modeling.docx               → model description and explanation
│   ├── base_text_modeling.pdf                → PDF version
│   └── Exercícios SQL — Sistema de Livros.docx  → SQL exercises
│
├── diagram/                 # Diagrams
│   ├── book_publisher.drawio                 → editable ER diagram (Draw.io)
│   └── book_publisher.png                    → visual diagram (PNG)
│
└── README.md
```

---

## Database Structure

**Main Entities:**

* **Authors** – registered authors who publish books
* **Publishers** – companies responsible for releasing books
* **Books** – main products, each linked to one or more authors
* **Clients** – people who place book orders
* **Orders** – purchase records connecting clients and books

The model maintains **referential integrity** using **foreign keys** and proper relationships between entities.

---

## How to Run

1. **Create the database**

   ```sql
   CREATE DATABASE book_publisher;
   ```

2. **Connect to it**

   ```bash
   \c book_publisher;
   ```

3. **Execute the scripts in order:**

   ```bash
   psql -U <username> -d book_publisher -f sql/create_tables_db_book_publisher.sql
   psql -U <username> -d book_publisher -f sql/insert_data_db_book_publisher.sql
   psql -U <username> -d book_publisher -f sql/queries_db_book_publisher.sql
   ```

Alternatively, you can use **pgAdmin** or **DBeaver** to run the scripts manually.

---

## Technologies Used

* **PostgreSQL 15+**
* **SQL (ANSI Standard)**
* **pgAdmin / DBeaver** – database management
* **Draw.io** – ER diagram modeling

---
