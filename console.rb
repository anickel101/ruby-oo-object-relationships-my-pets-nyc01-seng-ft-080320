require 'pry'
require_relative "./lib/cat.rb"
require_relative "./lib/dog.rb"
require_relative "./lib/owner.rb"

ryan = Owner.new("ryan")

ryan.buy_dog("Fido")
ryan.walk_dogs
ryan.buy_dog("Tom")
ryan.buy_dog("Rachel")

paws = Cat.new("Paws", ryan, "nervous", rand(10))
betty = Cat.new("Betty", ryan, "happy", rand(10))
alice = Cat.new("Alice", ryan, "happy", rand(10))
bell = Cat.new("Bell", ryan, "nervous", rand(10))

bones = Dog.new("Bones", ryan, "nervous", rand(10))
bruno = Dog.new("Bruno", ryan, "happy", rand(10))
ben = Dog.new("Ben", ryan, "happy", rand(10))
cheese = Dog.new("Cheese", ryan, "nervous", rand(10))

binding.pry
