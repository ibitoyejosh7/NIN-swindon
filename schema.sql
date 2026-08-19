CREATE TABLE IF NOT EXISTS bookings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  appointment_date TEXT NOT NULL,
  appointment_time TEXT NOT NULL,
  lead_name TEXT NOT NULL,
  lead_dob TEXT NOT NULL,
  lead_email TEXT NOT NULL,
  applicants_json TEXT NOT NULL,
  applicant_count INTEGER NOT NULL,
  total_pence INTEGER NOT NULL,
  status TEXT NOT NULL DEFAULT 'reserved',
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  expires_at TEXT,
  confirmed_at TEXT
);
CREATE UNIQUE INDEX IF NOT EXISTS idx_bookings_unique_slot ON bookings (appointment_date, appointment_time);
CREATE INDEX IF NOT EXISTS idx_bookings_date_status ON bookings (appointment_date, status);
