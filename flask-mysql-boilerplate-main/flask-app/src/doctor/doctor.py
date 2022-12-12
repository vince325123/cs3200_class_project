from flask import Blueprint, request, jsonify, make_response
import json
from src import db

doctor = Blueprint('doctor', __name__)

# Get all doctor's id and their name from the DB
@doctor.route('/doctor', methods=['GET'])
def get_doctors():
    cursor = db.get_db().cursor()
    cursor.execute('select first_name, last_name, reports_to, city, zip , doctor_id from doctor')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get the particular doctor's team information
@doctor.route('/doctor/<numb>/team', methods=['GET'])
def get_doctor_team(numb):
    cursor = db.get_db().cursor()
    query = '''
         select d.doctor_id as Doctor_Id,d.last_name as Doctor_Lastname, p.first_name as Patient_FirstName, p.last_name as Patient_LastName,
                n.last_name as Nurse_Lastname , (select bill.total from bill where p.bill_id = bill.bill_id) as Total_Amount
         from team t join nurse n on t.nurse_id = n.nurse_id join doctor d on t.doctor_id = d.doctor_id join
              patient p on t.patient_id = p.patient_id
         where t.doctor_id = {0}
         group by t.team_id
         '''
    cursor.execute(query.format(numb))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get particular one doctor information
@doctor.route('/doctor/<userID>', methods=['GET'])
def get_one_doctor(userID):
    cursor = db.get_db().cursor()
    cursor.execute('select doctor_id, first_name, last_name, reports_to, city, zip from doctor'
                   ' where doctor_id = {0}'.format(userID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response




