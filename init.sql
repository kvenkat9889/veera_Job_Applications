CREATE TABLE IF NOT EXISTS applications (
    id SERIAL PRIMARY KEY,
    personal_info JSONB NOT NULL,
    education JSONB NOT NULL,
    work_experience JSONB NOT NULL,
    documents JSONB NOT NULL,
    date TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) NOT NULL DEFAULT 'Pending'
);


CREATE INDEX IF NOT EXISTS idx_applications_status ON applications(status);
CREATE INDEX IF NOT EXISTS idx_applications_name ON applications((personal_info->>'name'));
CREATE INDEX IF NOT EXISTS idx_applications_email ON applications((personal_info->>'email'));
CREATE INDEX IF NOT EXISTS idx_applications_phone ON applications((personal_info->>'phone'));