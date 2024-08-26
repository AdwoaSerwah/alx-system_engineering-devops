#!/usr/bin/python3
"""
This module retrieves all user data from an api
"""
import json
import requests

# Fetch all users
users_url = "https://jsonplaceholder.typicode.com/users"
users = requests.get(users_url).json()

# Fetch all tasks
tasks_url = "https://jsonplaceholder.typicode.com/todos"
tasks = requests.get(tasks_url).json()

# Dictionary to hold all tasks grouped by user ID
all_tasks = {}

# Iterate through users to structure the JSON output
for user in users:
    user_id = user.get("id")
    username = user.get("username")

    # Filter tasks by user ID and structure them
    user_tasks = [{
        "username": username,
        "task": task['title'],
        "completed": task['completed']
    } for task in tasks if task['userId'] == user_id]

    # Add the structured tasks to the dictionary
    all_tasks[user_id] = user_tasks

# Write the JSON data to a file
with open("todo_all_employees.json", "w") as json_file:
    json.dump(all_tasks, json_file)
