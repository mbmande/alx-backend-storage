#!/usr/bin/env python3
""" +++++++++++++++
"""


def update_topics(mongo_collection, name, topics):
    """ kgahggjkhshajkhfwjdhdasjfhjsdh
    """
    mongo_collection.update_many(
        {"name": name},
        {"$set": {"topics": topics}}
    )
