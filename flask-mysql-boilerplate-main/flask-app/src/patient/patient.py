from flask import Blueprint, request, jsonify, make_response
import json
from src import db


patient = Blueprint('patient', __name__)

# Get one patient detailed information from the DB
@patient.route('/patient/<userID>', methods=['GET'])
def get_one_patient(userID):
    cursor = db.get_db().cursor()
    query = '''
             select first_name, last_name, patient_id, age, insurance_name as Insurance_company, deduction as Deductable, name as Current_prescription, any_refill as Refill_available
             from patient natural join insurance natural join prescription
             where patient_id = {0}
             '''
    cursor.execute(query.format(userID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get all patients detailed information from the DB
@patient.route('/all-patients', methods=['GET'])
def get_patients():
    cursor = db.get_db().cursor()
    query = '''
             select first_name, last_name, patient_id, age, insurance_name as Insurance_company, deduction as Deductable, name as Current_prescription, any_refill as Refill_available
             from patient natural join insurance natural join prescription
             '''
    cursor.execute(query)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

