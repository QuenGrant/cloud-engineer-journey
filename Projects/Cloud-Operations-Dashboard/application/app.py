import os
import pymysql
from flask import Flask, request, jsonify

DB_HOST = os.getenv("DB_HOST")
DB_NAME = os.getenv("DB_NAME")
DB_USER = os.getenv("DB_USER")
DB_PASSWORD = os.getenv("DB_PASSWORD")

app = Flask(__name__)

def get_db_connection():
    return pymysql.connect(
        host=DB_HOST,
        user=DB_USER,
        password=DB_PASSWORD,
        database=DB_NAME
    )

def init_db():
    connection = get_db_connection()
    cursor = connection.cursor()
    cursor.execute("CREATE TABLE IF NOT EXISTS messages (id INT AUTO_INCREMENT PRIMARY KEY, message TEXT NOT NULL)")
    connection.commit()
    cursor.close()
    connection.close()

@app.route("/")
def home():
    return "Cloud Operations Dashboard"

@app.route("/messages", methods=["POST"])
def create_message():
    data = request.get_json()
    message = data.get("message")

    connection = get_db_connection()
    cursor = connection.cursor()
    cursor.execute("INSERT INTO messages (message) VALUES (%s)", (message,))
    connection.commit()
    cursor.close()
    connection.close()

    return jsonify({"message": "Message stored successfully"}), 201

init_db()

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
