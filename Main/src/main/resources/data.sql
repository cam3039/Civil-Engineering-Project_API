-- Insert sample contractors
INSERT INTO contractor (name, license_number) VALUES ('ABC Constructions', 'LIC-12345');
INSERT INTO contractor (name, license_number) VALUES ('XYZ Engineering', 'LIC-67890');
INSERT INTO contractor (name, license_number) VALUES ('Global Builders', 'LIC-54321');

-- Insert sample projects (each associated with a contractor)
INSERT INTO project (name, description, start_date, end_date, contractor_id) 
VALUES ('Highway Expansion', 'Expansion of North-South Highway', '2025-01-15', '2026-12-30', 1);

INSERT INTO project (name, description, start_date, end_date, contractor_id) 
VALUES ('City Mall Construction', 'Construction of new shopping mall in downtown', '2025-03-10', '2027-06-25', 2);

INSERT INTO project (name, description, start_date, end_date, contractor_id) 
VALUES ('Riverside Bridge', 'New bridge connecting east and west sides', '2025-05-20', '2026-08-15', 3);

-- Insert sample engineers (each associated with a project)
INSERT INTO engineer (name, specialization, project_id) 
VALUES ('John Doe', 'Structural Engineering', 1);

INSERT INTO engineer (name, specialization, project_id) 
VALUES ('Jane Smith', 'Geotechnical Engineering', 1);

INSERT INTO engineer (name, specialization, project_id) 
VALUES ('Robert Johnson', 'Transportation Engineering', 2);

INSERT INTO engineer (name, specialization, project_id) 
VALUES ('Sarah Williams', 'Environmental Engineering', 3);

-- Insert sample buildings (each associated with a project)
INSERT INTO building (name, address, project_id) 
VALUES ('Toll Plaza A', 'Highway Mile 23, North Section', 1);

INSERT INTO building (name, address, project_id) 
VALUES ('Main Mall Building', '123 Downtown Street, Central District', 2);

INSERT INTO building (name, address, project_id) 
VALUES ('West Tower', '45 Riverside Avenue, West District', 2);

INSERT INTO building (name, address, project_id) 
VALUES ('Bridge Control Room', '78 Riverside Road, East Bank', 3);
