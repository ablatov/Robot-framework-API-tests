"""
Robot test library - utils
"""
import os
import json


class Utils:
    """
    Utilities for robot tests
    """

    @staticmethod
    def json_from_file(file_path):
        """
        Make JSON object from json file

        :param file_path: path to file
        :type file_path: str
        :return: JSON object
        """
        path = os.path.abspath(file_path)
        with open(path) as f:
            data = json.load(f)

        return data
