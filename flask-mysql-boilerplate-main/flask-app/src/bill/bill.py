from flask import Blueprint, request, jsonify, make_response
import json
from src import db


bill = Blueprint('bill', __name__)

@bill.route('/add-bill', methods=['Post'])
def add_bill():
    cursor = db.get_db().cursor()
    bill_id = request.form['bill_id']
    total = request.form['total']
    is_paid = request.form['is_paid']
    query = f'Insert into bill(bill_id, total, is_paid) values(\"{bill_id}\", \"{total}\", \"{is_paid}\")'
    cursor.execute(query)
    db.get_db().commit()
    return "Success!"