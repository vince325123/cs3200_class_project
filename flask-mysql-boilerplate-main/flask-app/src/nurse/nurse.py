from flask import Blueprint, request, jsonify, make_response
import json
from src import db


nurse = Blueprint('nurse', __name__)

# Get one nurse detailed information from the DB
@nurse.route('/nurse/<userID>', methods=['GET'])
def get_nurse(userID):
    cursor = db.get_db().cursor()
    query = '''
             select n.first_name, n.last_name, p.first_name as Current_patient, insurance_name as Insurance_company, name as Current_prescription, street_address as Patient_phramacy_address
             from nurse n join team t on n.nurse_id = t.nurse_id join patient p on t.patient_id = p.patient_id join insurance i on p.insurance_id = i.insurance_id join prescription pr on pr.prescription_id = p.prescription_id
                  join pharmacy ph on ph.pharmacy_id = p.pharmacy_id
             where n.nurse_id = {0}
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

@nurse.route('/add-nurse', methods=['Post'])
def add_nurse():
    cursor = db.get_db().cursor()
    nurse_id = request.form['nurse_id']
    first_name = request.form['first_name']
    last_name = request.form['last_name']
    phone = request.form['phone']
    city = request.form['city']
    query = f'Insert into nurse(nurse_id, first_name, last_name, phone, city) values(\"{nurse_id}\", \"{first_name}\", \"{last_name}\", \"{phone}\", \"{city}\")'
    cursor.execute(query)
    db.get_db().commit()
    return "Success!"