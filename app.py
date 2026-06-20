import sys
import os
from flask import Flask, jsonify, request
import pandas as pd

sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

from model.recommend import get_recommendations, data
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route('/')
def index():
    return app.send_static_file('index.html')

@app.route('/products', methods=['GET'])
def products():
    products_list = data.to_dict(orient='records')
    return jsonify(products_list)

@app.route('/recommend', methods=['GET'])
def recommend():
    product = request.args.get('product')
    result = get_recommendations(product)
    return jsonify(result)

if __name__ == '__main__':
    app.run(debug=True)