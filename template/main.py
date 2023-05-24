class CLI(object):

    def __init__(self, name="World"):
        self.name = name

    def hello(self):
        print(f"Hello {self.name}")

    def goodbye(self):
        print(f"Goodbye {self.name}")
