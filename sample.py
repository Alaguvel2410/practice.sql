import mysql.connector

# connect database
connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="student_course_db"
)

cursor = connection.cursor()

# display students
query = "SELECT * FROM students"
cursor.execute(query)

print("Student List:\n")

for row in cursor:
    print("ID:", row[0], "| Name:", row[1], "| Email:", row[2])

connection.close()
