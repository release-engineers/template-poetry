import fire
from {{cookiecutter.repo_name}}.main import CLI
import sys

if __name__ == "__main__":
    fire.Fire(component=CLI, name="{{cookiecutter.repo_name}}")
