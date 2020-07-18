class Owner
  attr_reader :name, :species, :say_species
  @@all = []
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self 
    @say_species = "I am a #{self.species}." 
  end 
  
  
  
  def self.all 
    @@all 
  end 
  
  def self.count 
    @@all.size 
  end 
  
  def self.reset_all 
    @@all = []
  end 
  def cats 
    Cat.all.select{|cat| cat.owner == self}
  end 
  
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end 
  
  def buy_cat(cat)
    Cat.new(cat, self)
  end 
  
  def buy_dog(dog)
    Dog.new(dog, self)
  end 
  
  def walk_dogs 
    a = Dog.all.select{|dog| dog.owner == self}
    a.each do |dog|
      dog.mood = "happy"
    end 
  end 
  
  def feed_cats
    a = Cat.all.select{|cat| cat.owner == self}
    a.each do |cat|
      cat.mood = "happy"
    end 
  end 
  
  def sell_pets
    a = Dog.all.select{|dog| dog.owner == self}
    a.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end 
    b = Cat.all.select{|cat| cat.owner == self}
    b.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end 
  end 
    
  
end