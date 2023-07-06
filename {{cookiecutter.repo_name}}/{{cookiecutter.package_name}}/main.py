class CLI(object):

    def __init__(self, name="World"):
        self.name = name

    def hello(self):
        return f"Hello {self.name}"

    def goodbye(self):
        return f"Goodbye {self.name}"
