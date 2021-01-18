-- Your database schema. Use the Schema Designer at http://localhost:8001/ to add some tables.
CREATE TABLE "first" (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL
);
CREATE TABLE "second" (
    first_id UUID NOT NULL
);
ALTER TABLE "second" ADD CONSTRAINT second_ref_first_id FOREIGN KEY (first_id) REFERENCES "first" (id) ON DELETE NO ACTION;
