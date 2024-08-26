#!/usr/bin/python3
"""
This module retrieves user data from an api
"""
import requests
import sys


def get_employee_todo_progress(user_id):
    # Retrieve name
    user_url = f"https://jsonplaceholder.typicode.com/users/{user_id}"
    user_response = requests.get(user_url)
    user_data = user_response.json()
    name = user_data.get("name")

    # Fetch employee's todo list
    todos_url = f"https://jsonplaceholder.typicode.com/users/{user_id}/todos"
    todos_response = requests.get(todos_url)
    todos_data = todos_response.json()

    # Calculate total and completed tasks
    total_tasks = len(todos_data)
    completed_tasks = [task for task in todos_data if task.get("completed")]
    done_tasks = len(completed_tasks)

    # Print employee's todo list progress
    print(f"Employee {name} is done with tasks({done_tasks}/{total_tasks}):")
    for task in completed_tasks:
        print(f"\t {task.get('title')}")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 0-gather_data_from_an_API.py <user_id>")
    else:
        try:
            user_id = int(sys.argv[1])
            get_employee_todo_progress(user_id)
        except ValueError:
            print("Please provide a valid employee ID (integer).")
