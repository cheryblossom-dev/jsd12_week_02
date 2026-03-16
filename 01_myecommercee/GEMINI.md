# GEMINI.md - Smart Healthy Food Store

## Project Overview
This project is an E-commerce platform for healthy food products. It aims to bridge the gap between health-conscious consumers and small vendors of healthy food.

## Strategic Mandates
- **Domain Alignment:** The database schema and mock data must reflect a "Healthy Food Store" (e.g., Organic Produce, Superfoods, Salads) rather than generic fast food.
- **E-commerce Focus:** Prioritize features like User Registration, Customer Profiles, and Order Tracking over internal POS/Staff management.
- **Data Consistency:** Ensure that the SQL schema (PostgreSQL) and the JavaScript models (`06_bring-it-to-javascript.js`) remain synchronized in terms of data structure.

## Technical Standards
- **Database:** PostgreSQL.
  - Tables should follow `Snake_Case` or `PascalCase` consistently (currently using `PascalCase` in `create_tables.sql`).
  - Every order must be linked to a `Customer` (to be implemented).
- **Backend/Logic:** JavaScript (Node.js style objects).
- **Naming Conventions:** Use descriptive names for ingredients and menu items that highlight health benefits or dietary categories (e.g., Gluten-Free, Vegan, High-Protein).

## Workflow Preferences
- **Incremental Updates:** When updating the database, provide migration-style scripts or clearly versioned SQL files.
- **Validation:** Always verify that new ingredients or menu items have associated suppliers and recipes where applicable.
- **Documentation:** Maintain the `05_product-backlog.md` as the source of truth for feature priority.

## Known Discrepancies (To be resolved)
- [ ] Current database contains burger-related data; needs migration to healthy food items.
- [ ] `Orders` table currently links to `Staff` but lacks a `Customer` link.
- [ ] Missing `Customers` table in SQL despite being present in JS models.
