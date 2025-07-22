#!/usr/bin/python3
"""
Python script that takes your GitHub credentials (username and personal access token)
and uses the GitHub API to display your user ID.
Uses Basic Authentication with a personal access token (requires read:user permission).
"""

import requests
import sys

if __name__ == '__main__':
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
            user_data = response.json()
            print(user_data['id'])
        else:
            print("None")
    except (requests.RequestException, ValueError, KeyError):
        # Handle network errors, JSON parsing errors, or missing 'id' key
        print("None")
