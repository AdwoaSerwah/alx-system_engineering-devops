#!/usr/bin/python3
"""
Recursive function to count occurrences of keywords in hot articles' titles
from a given subreddit.
"""
import re
import requests


def count_words(subreddit, word_list, hot_list=[], after=None):
    """Recursively fetches hot articles and counts occurrences of keywords."""
    sk_url = f"https://www.reddit.com/r/{subreddit}/hot.json"
    headers = {
        'User-Agent': 'my_reddit_app/1.0 (contact@example.com)'
    }
    params = {'after': after} if after else {}
    result = requests.get(
            sk_url, headers=headers, params=params, allow_redirects=False)

    if result.status_code == 200:
        data = result.json()
        posts = data.get('data', {}).get('children', [])
        after = data.get('data', {}).get('after', None)

        # Extract titles and extend hot_list
        if posts:
            titles = [post.get(
                'data', {}).get('title', '').lower() for post in posts]
            hot_list.extend(titles)

        # Recursively call the function if there's a next page
        if after:
            return count_words(subreddit, word_list, hot_list, after)

        # Count occurrences of each keyword
        word_count = {word.lower(): 0 for word in word_list}
        for title in hot_list:
            for word in word_list:
                # Use regex to match whole words
                count = len(re.findall(
                    r'\b' + re.escape(word.lower()) + r'\b', title))
                word_count[word.lower()] += count

        # Print results sorted by count and then alphabetically
        sorted_counts = sorted(word_count.items(), key=lambda x: (-x[1], x[0]))
        for word, count in sorted_counts:
            if count > 0:
                print(f"{word}: {count}")

        return

    # If the subreddit is invalid or any other issue, print nothing
    return None
