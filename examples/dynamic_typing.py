class Duck:
    def quack(self):
        print("Quack quack")
    def walk(self):
        print("walking like a duck")

class DuckImpostor:
    def quack(self):
        print("Mooo, oops, Quack")
    def walk(self):
        print("not walking like a duck")

def do_something(x):
    x.quack()
    x.walk()

do_something(Duck())
do_something(DuckImpostor())
