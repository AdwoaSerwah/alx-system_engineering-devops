#!/usr/bin/python3
"""
This module retrieves user data from an api
"""
import json
import requests
import sys


def get_employee_todo_json(user_id):
    # Retrieve name
    user_url = f"https://jsonplaceholder.typicode.com/users/{user_id}"
    user_response = requests.get(user_url)
    user_data = user_response.json()
    name = user_data.get("name")

    # Check if the employee exists
    if user_response.status_code != 200:
        print(f"User with ID {employee_id} not found.")
        sys.exit(1)

    # Fetch employee's todo list
    todos_url = f"https://jsonplaceholder.typicode.com/users/{user_id}/todos"
    todos_response = requests.get(todos_url)
    todos_data = todos_response.json()

    # Structure the data as required
    tasks = []
    for task in todos_data:
        task_info = {
            "task": task.get("title"),
            "completed": task.get("completed"),
            "username": name
        }
        tasks.append(task_info)

    # Create the final data structure
    data = {str(user_id): tasks}

    # Write to a JSON file
    file = f"{user_id}.json"
    with open(file, mode='w') as json_file:
        json.dump(data, json_file)


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 2-export_to_JSON.py EMPLOYEE_ID")
    else:
        try:
            user_id = int(sys.argv[1])
            get_employee_todo_json(user_id)
        except ValueError:
            print("Please provide a valid employee ID (integer).")
