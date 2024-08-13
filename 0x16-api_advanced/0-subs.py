#!/usr/bin/python3
"""
This module queries the Reddit API and returns the number of subscribers
for a given subreddit.
"""
import requests


def number_of_subscribers(subreddit):
    """Queries the Reddit API and returns the number of subscribers."""
    sk_url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {'User-Agent': 'reddit_api/0-subs/1.0'}
    try:
        result = requests.get(sk_url, headers=headers, allow_redirects=False)
        if result.status_code == 200:
            data = result.json()
            # print(data)
            return data.get('data', {}).get('subscribers', 0)
        else:
            return 0
    except requests.RequestException:
        return 0
