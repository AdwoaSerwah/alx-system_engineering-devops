#!/usr/bin/python3
"""
This module retrieves user data from an api
"""
import csv
import requests
import sys


def get_employee_todo_csv(user_id):
    # Retrieve name
    user_url = f"https://jsonplaceholder.typicode.com/users/{user_id}"
    user_response = requests.get(user_url)
    user_data = user_response.json()
    name = user_data.get("username")

    # Fetch employee's todo list
    todos_url = f"https://jsonplaceholder.typicode.com/users/{user_id}/todos"
    todos_response = requests.get(todos_url)
    todos_data = todos_response.json()

    file = f"{user_id}.csv"

    # Write the data to a CSV file
    with open(file, mode='w', newline='') as csv_file:
        writer = csv.writer(csv_file, quoting=csv.QUOTE_ALL)
        for task in todos_data:
            writer.writerow([
                user_id,
                name,
                task.get("completed"),
                task.get("title")
                ])


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 1-export_to_CSV.py <user_id>")
    else:
        try:
            user_id = int(sys.argv[1])
            get_employee_todo_csv(user_id)
        except ValueError:
            print("Please provide a valid employee ID (integer).")
