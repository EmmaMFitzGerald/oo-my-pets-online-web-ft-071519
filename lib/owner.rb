require "pry"
class Owner
  
  attr_accessor :cat
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name, species = "human")
    @name = name 
    @species = species
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def say_species
   return "I am a #{species}."
  end
  
  def self.count
    self.all.size
  end
  
  def self.reset_all
    reset = @@all.clear
    reset
  end
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    @@all << Cat.new(name, owner, mood)
  end 
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    Dog.all.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    Cat.all.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    Cat.all.each do |cat|
      cat.mood = "nervous" 
    end
    Dog.all.each do |dog|
      dog.mood = "nervous" 
    end
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
  
end