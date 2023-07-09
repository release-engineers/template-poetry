from {{cookiecutter.package_name}}.main import CLI


def test_cli():
    cli = CLI(name="World")
    answer = cli.hello()
    assert answer == "Hello World"
