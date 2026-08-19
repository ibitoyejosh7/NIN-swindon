# NIN Swindon

Customer-facing NIN appointment website with a Cloudflare Pages Function and D1 booking database.

## Included

- Responsive customer-focused landing page
- Live appointment availability
- Weekday evening and weekend slots
- Adult £80 / child £60 pricing
- Family/group bookings
- Server-side validation
- Past-slot protection
- Unique-slot double-booking protection
- Honeypot and same-origin checks
- Privacy notice and independent-service disclaimer

## Before launch

1. Confirm the prices and appointment hours.
2. Create a Cloudflare D1 database and run `schema.sql`.
3. Bind the D1 database to the Pages project with variable name `DB`.
4. Set the Cloudflare Pages environment variable `COMPANY_EMAIL` to the real booking-team email address.
5. Test a complete booking on the deployed site.
6. Replace the starter privacy notice with the business's final privacy policy and retention details.

## Hosting

Use GitHub as the source repository and Cloudflare Pages as the live host. Keep `.dev.vars`, `.env`, passwords, API keys and other secrets out of GitHub.

Build output directory: `public`

The `/functions` directory must remain at the repository root for the booking API to deploy.

## Local checks

```bash
node --check public/app.js
node --check functions/api/bookings.js
npm install
npx wrangler pages dev public
```

The full booking flow requires a D1 binding and a configured `COMPANY_EMAIL`.
