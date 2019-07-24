CREATE EXTENSION CITEXT;

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  email CITEXT UNIQUE,
  password text NOT NULL
);

CREATE TABLE properties (
  id SERIAL PRIMARY KEY NOT NULL,
  owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  title TEXT,
  description TEXT,
  thumbnail_photo_url TEXT,
  cover_photo_url TEXT,
  cost_per_night INTEGER,
  street TEXT,
  city TEXT,
  province TEXT,
  postal_code TEXT,
  country TEXT,
  parking_spaces INTEGER,
  number_of_bathrooms INTEGER,
  number_of_bedroms INTEGER,
  active BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE reservations (
  id SERIAL PRIMARY KEY NOT NULL,
  start_date DATE,
  end_date DATE,
  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE property_reviews (
  id SERIAL PRIMARY KEY NOT NULL,
  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  reservation_id INTEGER REFERENCES reservations(id) ON DELETE CASCADE,
  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
  rating INTEGER,
  message TEXT
);