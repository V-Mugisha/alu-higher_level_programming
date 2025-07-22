#!/bin/bash
# Send a GET request to the URL and measure the size of the response body
curl -sI "$1" | grep -i Content-Length | awk '{print $2}'
