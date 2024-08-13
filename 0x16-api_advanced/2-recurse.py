#!/usr/bin/python3
"""
Recursive function to get all hot articles from a given subreddit.
"""
import requests


def recurse(subreddit, hot_list=[], after=None):
    """Recursively fetches all hot articles for a given subreddit."""
    sk_url = f"https://www.reddit.com/r/{subreddit}/hot.json"
    headers = {
        'User-Agent': 'my_reddit_app/1.0 (contact@example.com)'
    }
    params = {'after': after} if after else {}

    r = requests.get(
            sk_url, headers=headers, params=params, allow_redirects=False)

    if r.status_code == 200:
        data = r.json()
        posts = data.get('data', {}).get('children', [])
        after = data.get('data', {}).get('after', None)

        if posts:
            hot_list.extend(
                    [post.get('data', {}).get('title') for post in posts])

        # If there's a next page, recurse
        if after:
            return recurse(subreddit, hot_list, after)
        return hot_list

    return None
