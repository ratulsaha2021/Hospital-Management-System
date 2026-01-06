CREATE TABLE hospital
(
  information VARCHAR(40) NOT NULL,
  room_number VARCHAR(5) NOT NULL,
  room_type VARCHAR(10) NOT NULL,
  emergency_roomnumber VARCHAR(5) NOT NULL,
  icuroom_number VARCHAR(5) NOT NULL,
  donation VARCHAR(10) NOT NULL,
  normal VARCHAR(10) NOT NULL,
  specialsite VARCHAR(10) NOT NULL,
  info_id INT NOT NULL,
  PRIMARY KEY (info_id)
);
CREATE TABLE doctor_details_list
(
  first_name VARCHAR(10) NOT NULL,
  last_name VARCHAR(10),
  address VARCHAR(30) NOT NULL,
  hospital_name VARCHAR(20) NOT NULL,
  year VARCHAR(5) NOT NULL,
  MBBS_institution VARCHAR(30) NOT NULL,
  FCPS_institution VARCHAR(30) NOT NULL,
  other_degrees VARCHAR(50) NOT NULL,
  disease_name VARCHAR(20) NOT NULL,
  other_chamber_address VARCHAR(30),
  days VARCHAR(10) NOT NULL,
  time VARCHAR(10) NOT NULL,
  doctor_id INT NOT NULL,
  info_id INT NOT NULL,
  PRIMARY KEY (doctor_id),
  FOREIGN KEY (info_id) REFERENCES hospital(info_id)
);
CREATE TABLE nurse
(
  nurse_id INT NOT NULL,
  name VARCHAR(30) NOT NULL,
  floor_number VARCHAR(2) NOT NULL,
  building_number VARCHAR(5) NOT NULL,
  address VARCHAR(50) NOT NULL,
  institution VARCHAR(30) NOT NULL,
  hospital_name VARCHAR(20) NOT NULL,
  year VARCHAR(5) NOT NULL,
  workdays VARCHAR(10) NOT NULL,
  info_id INT NOT NULL,
  PRIMARY KEY (nurse_id),
  FOREIGN KEY (info_id) REFERENCES hospital(info_id)
);
CREATE TABLE special_site
(
  operation VARCHAR(10) NOT NULL,
  checkup VARCHAR(10) NOT NULL,
  donation VARCHAR(10) NOT NULL,
  days VARCHAR(10) NOT NULL,
  time VARCHAR(10) NOT NULL,
  info_id INT,
  PRIMARY KEY (info_id),
  FOREIGN KEY (info_id) REFERENCES hospital(info_id)
);
CREATE TABLE Patients_Details
(
  patient_id INT NOT NULL,
  first_name VARCHAR(10) NOT NULL,
  middle_initial VARCHAR(10),
  last_name VARCHAR(10) NOT NULL,
  city VARCHAR(10) NOT NULL,
  state VARCHAR(10) NOT NULL,
  post_code VARCHAR(5) NOT NULL,
  previous_prescribed_medicine VARCHAR(50) NOT NULL,
  date_of_birth VARCHAR(10) NOT NULL,
  symptom VARCHAR(50) NOT NULL,
  disease_start_from VARCHAR(10) NOT NULL,
  previous_doctor_name VARCHAR(20),
  info_id INT,
  doctor_id INT NOT NULL,
  PRIMARY KEY (patient_id, info_id),
  FOREIGN KEY (info_id) REFERENCES special_site(info_id),
  FOREIGN KEY (doctor_id) REFERENCES doctor_details_list(doctor_id),
  FOREIGN KEY (info_id) REFERENCES hospital(info_id)
);
CREATE TABLE bill
(
  patient_details VARCHAR(30) NOT NULL,
  admission_date VARCHAR(10) NOT NULL,
  discharge_date VARCHAR(10) NOT NULL,
  tax NUMERIC(2.1) NOT NULL,
  pharmacy_bill VARCHAR(10) NOT NULL,
  room_bill VARCHAR(10) NOT NULL,
  doctorcharge VARCHAR(10) NOT NULL,
  othercharges VARCHAR(10) NOT NULL,
  patient_id INT NOT NULL,
  PRIMARY KEY (patient_id),
  FOREIGN KEY (patient_id) REFERENCES Patients_Details(patient_id)
);

CREATE TABLE checkup
(
  patient_id INT NOT NULL,
  info_id INT NOT NULL,
  nurse_id INT NOT NULL,
  PRIMARY KEY (patient_id, info_id, nurse_id),
  FOREIGN KEY (patient_id, info_id) REFERENCES Patients_Details(patient_id, info_id),
  FOREIGN KEY (nurse_id) REFERENCES nurse(nurse_id)
);

CREATE TABLE Patients_Details_phone_number
(
  phone_number INT NOT NULL,
  patient_id INT NOT NULL,
  info_id INT NOT NULL,
  PRIMARY KEY (phone_number, patient_id, info_id),
  FOREIGN KEY (patient_id, info_id) REFERENCES Patients_Details(patient_id, info_id)
);



