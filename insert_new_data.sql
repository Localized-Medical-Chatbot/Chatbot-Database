use hospitaldb;
-- Insert data into Speciality table
INSERT INTO `speciality` (`type`) VALUES
    ('Cardiology'),
    ('Orthopedics'),
    ('Pediatrics'),
    ('Dermatology'),
    ('Neurology');

-- Insert data into Doctor table
INSERT INTO `doctor` (`first_name`, `last_name`, `specialty`) VALUES
    ('John', 'Smith', 1),
    ('Emily', 'Johnson', 2),
    ('Michael', 'Williams', 3),
    ('Sarah', 'Anderson', 1),
    ('David', 'Martinez', 2),
    ('Jennifer', 'Lee', 4),
    ('Christopher', 'Wilson', 3),
    ('Linda', 'Taylor', 5),
    ('Brian', 'Davis', 4),
    ('Karen', 'Miller', 1);

-- Insert data into Appointment table
INSERT INTO `appointment` (`doctor_id`, `first_name`, `last_name`, `start_time`, `end_time`, `date`) VALUES
    (1, 'Alice', 'Brown', '10:00:00', '10:30:00', '2023-08-25'),
    (2, 'James', 'Davis', '14:30:00', '15:00:00', '2023-08-25'),
    (3, 'Olivia', 'Jones', '09:45:00', '10:15:00', '2023-08-26'),
    (4, 'Emma', 'Wilson', '11:00:00', '11:30:00', '2023-08-26'),
    (5, 'Daniel', 'Taylor', '16:00:00', '16:30:00', '2023-08-27'),
    (6, 'Sophia', 'Harris', '13:30:00', '14:00:00', '2023-08-27'),
    (7, 'William', 'Johnson', '08:15:00', '08:45:00', '2023-08-28'),
    (8, 'Ava', 'Wilson', '12:30:00', '13:00:00', '2023-08-28'),
    (9, 'Ethan', 'Thomas', '10:30:00', '11:00:00', '2023-08-29'),
    (10, 'Mia', 'White', '15:30:00', '16:00:00', '2023-08-29');

-- Insert data into Availability table
INSERT INTO `availability` (`doctor_id`, `start_time`, `end_time`, `date`) VALUES
    (1, '08:00:00', '12:00:00', '2023-08-25'),
    (1, '14:00:00', '18:00:00', '2023-08-26'),
    (2, '10:00:00', '14:00:00', '2023-08-25'),
    (2, '13:00:00', '17:00:00', '2023-08-26'),
    (3, '09:00:00', '13:00:00', '2023-08-26'),
    (3, '09:00:00', '13:00:00', '2023-08-28'),
    (4, '09:00:00', '12:00:00', '2023-08-26'),
    (4, '15:00:00', '18:00:00', '2023-08-27'),
    (5, '12:00:00', '16:00:00', '2023-08-27'),
    (5, '08:00:00', '13:00:00', '2023-08-29'),
    (6, '10:00:00', '13:00:00', '2023-08-27'),
    (6, '14:30:00', '17:30:00', '2023-08-28'),
    (7, '07:30:00', '11:30:00', '2023-08-28'),
    (7, '08:00:00', '15:00:00', '2023-08-30'),
    (8, '11:30:00', '16:00:00', '2023-08-29'),
    (8, '14:30:00', '19:00:00', '2023-08-30'),
    (9, '08:00:00', '10:30:00', '2023-08-29'),
    (9, '12:30:00', '15:00:00', '2023-08-30'),
    (10, '09:00:00', '13:00:00', '2023-08-30');

-- Insert dummy data into the clinic table
INSERT INTO clinic (id,name, description) VALUES
  (1,'pediatric', 'Specializing in medical care for infants, children, and adolescents.'),
  (2,'psychology', 'Offering counseling and therapy services for mental health and well-being.'),
  (3,'burn', 'Providing treatment and rehabilitation for burn injuries.'),
  (4,'cardiology', 'Dedicated to heart health, offering diagnosis and treatment for cardiac conditions.'),
  (5,'gynecology', 'Caring for women\'s reproductive health and wellness.'),
  (6,'neurology', 'Focused on the diagnosis and treatment of disorders related to the nervous system.'),
  (7,'surgery', 'Performing various surgical procedures to improve patient health.');


-- Insert dummy data into the schedule table (continued)
INSERT INTO schedule (clinic_id, start_time, end_time, date) VALUES
  -- Pediatric Clinic
  (1, '08:00:00', '12:00:00', '2023-08-27'),
  (1, '13:00:00', '17:00:00', '2023-08-27'),
  (1, '09:00:00', '13:00:00', '2023-08-28'),
  (1, '14:00:00', '18:00:00', '2023-08-28'),
  -- Psychology Clinic
  (2, '10:00:00', '14:00:00', '2023-08-26'),
  (2, '15:00:00', '19:00:00', '2023-08-26'),
  (2, '11:00:00', '15:00:00', '2023-08-27'),
  (2, '16:00:00', '20:00:00', '2023-08-27'),
  -- Burn Clinic
  (3, '09:00:00', '13:00:00', '2023-08-26'),
  (3, '14:00:00', '18:00:00', '2023-08-26'),
  (3, '10:00:00', '14:00:00', '2023-08-27'),
  (3, '15:00:00', '19:00:00', '2023-08-27'),
  -- Cardiology Clinic
  (4, '10:00:00', '14:00:00', '2023-08-27'),
  (4, '13:00:00', '17:00:00', '2023-08-27'),
  (4, '08:00:00', '12:00:00', '2023-08-28'),
  (4, '13:00:00', '17:00:00', '2023-08-28'),
  -- Gynecology Clinic
  (5, '09:00:00', '12:00:00', '2023-08-26'),
  (5, '13:00:00', '16:00:00', '2023-08-26'),
  (5, '10:00:00', '13:00:00', '2023-08-28'),
  (5, '14:00:00', '17:00:00', '2023-08-28'),
  -- Neurology Clinic
  (6, '10:00:00', '13:00:00', '2023-08-26'),
  (6, '14:00:00', '17:00:00', '2023-08-26'),
  (6, '09:00:00', '12:00:00', '2023-08-27'),
  (6, '13:00:00', '16:00:00', '2023-08-27'),
  -- Surgery Clinic
  (7, '08:00:00', '12:00:00', '2023-08-27'),
  (7, '13:00:00', '17:00:00', '2023-08-27'),
  (7, '09:00:00', '13:00:00', '2023-08-28'),
  (7, '14:00:00', '18:00:00', '2023-08-28');
