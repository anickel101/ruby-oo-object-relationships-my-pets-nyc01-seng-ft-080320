class Cat

  attr_accessor :owner, :mood, :age
  attr_reader :name

  @@all = []

  def initialize(name, owner, mood="nervous", age=2)
    @name = name
    @owner = owner
    @mood = mood
    @age = age
    @@all << self
  end

  #Class Methods
  def self.all
    @@all
  end
  
end