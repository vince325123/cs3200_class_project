# CS3200 Final Project
This README attempts to explain the structure of our CS 3200 Project.

## Team: Hospital 101 - Group Members: Kaiyang Ding, Richard Dao, Yidi Wang, Mingui Cheng
### Video Presentation Link: https://youtu.be/LKwzPULHJA4

# Abstract
Our project is based on a hospital database management system. It includes the registration of nurses and sets up patient billing invoices in a digitalized system (post requests). It will also contain doctor, nurse, and patient information. Users can find details information of a doctor, nurse, and patient using the id.  

## Initial Set-up
This repo contains a boilerplate setup for spinning up 2 docker containers: 
1. A MySQL 8 container 
2. A Python Flask container to implement a REST API

## `src` 
- Contains blueprints and routes for the three personas: doctor, nurse, and patient
- `doctor.py` - contains 3 GET routes that allow user to obtain information about a doctor and their information, get the doctor's specific team information, and access all available doctors in the database
- `nurse.py` - contains 1 GET route that allows user to obtain information about a specific nurse using ID and 1 POST route that allows for the submission of a new nurse within the database
- `patient.py` - contains 2 GET routes that allow users to details information about a patient using ID and all patients within the database
- `bill.py` - contains 1 POST route that allows user to add a bill for a specific patient using the ID.
## `secrets`
- Contains passwords for db and db_root





