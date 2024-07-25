SELECT
    '2023-02-19'::DATE,
    '123'::INTEGER,
    'true'::BOOLEAN,
    '3.14'::REAL;

CREATE TABLE data_science_jobs (
    job_id INT PRIMARY KEY,
    job_title TEXT,
    company_name TEXT,
    post_date DATE
);

INSERT INTO data_science_jobs (job_id, job_title, company_name, post_date)
VALUES
(1, 'Data Scientist', 'Tech Innovations', '2023-01-01'),
(2, 'Machine Learning Engineer', 'Data driven Co', '2023-01-15'),
(3, 'AI Specialist', 'Future Tech', '2023-02-01');

ALTER TABLE data_science_jobs
ADD COLUMN remote BOOLEAN;

ALTER TABLE data_science_jobs
RENAME COLUMN post_date TO posted_on;

ALTER TABLE data_science_jobs
ALTER COLUMN remote SET DEFAULT FALSE;

ALTER TABLE data_science_jobs
DROP COLUMN company_name;

UPDATE data_science_jobs
SET remote = TRUE WHERE job_id = 2;

DROP TABLE data_science_jobs;



