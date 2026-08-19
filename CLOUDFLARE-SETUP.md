# NIN Swindon — Cloudflare setup

## D1 database

Create a Cloudflare D1 database named `nin-swindon-bookings`.

Then bind it to the Pages project using:

- Binding name: `DB`
- Database: `nin-swindon-bookings`

After the binding is saved, redeploy the Pages project.

## Database schema

Run the SQL in `schema.sql` against the production D1 database.

## Environment variable

Set `COMPANY_EMAIL` in the Pages project environment variables to the real business email address before accepting live bookings.

## Important

Do not put database IDs, API tokens, passwords, or other secrets in the GitHub repository.
