import os
from abc import ABC, abstractmethod

class BaseTool(ABC):
    allowed_root = None  # Set this at runtime to a base directory

    @classmethod
    def validate_path(cls, path: str):
        if cls.allowed_root is None:
            raise ValueError("allowed_root not set in BaseTool")

        # Join the user path with allowed root, then get absolute path
        abs_path = os.path.abspath(os.path.join(cls.allowed_root, path))

        # Check if abs_path is still within the allowed root
        if not abs_path.startswith(os.path.abspath(cls.allowed_root)):
            raise ValueError(f"Disallowed path: {abs_path}")

        return abs_path

    @abstractmethod
    def run(self, **kwargs):
        pass