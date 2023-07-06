import fire
from {{cookiecutter.package_name}}.main import CLI


def main():
    fire.Fire(component=CLI, name="{{cookiecutter.repo_name}}")


if __name__ == "__main__":
    main()
