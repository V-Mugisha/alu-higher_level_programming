#!/usr/bin/python3
import requests
import sys

# Get username and personal access token from command line arguments
username = sys.argv[1]
token = sys.argv[2]

# GitHub API endpoint for user information
url = "https://api.github.com/user"

try:
    # Make GET request with Basic Authentication
    response = requests.get(url, auth=(username, token))
    
    # Check if request was successful (status code 200)
    if response.status_code == 200:
        # Parse JSON response and extract user ID
        user_data = response.json()
        print(user_data['id'])
    else:
        # Print None for unsuccessful requests
        print("None")
except:
    # Print None for any errors (e.g., network issues)
    print("None")
