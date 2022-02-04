# What is class - (object oriented programming) OOP
# Ruby/JS and others (java, python, C#...) are considered object oriented languages

# high level language
# ruby -> c -> machine language -> binary

# gives us a way to code like we see/ how we think about the world
# as a whole bunch of objects
# allows us to defince our own objects in an easy human readable way (classes)

# class - blueprint to create these real world objects

# define my person class
# attributes/characters
# functionality

# Encapsulation
class Person
  # attr_accessor allows get(read) and set(write) for these vars
  attr_accessor :age, :name, :password
  # there is also attr_reader that allows get(read)
  # there is also attr_writer that allows set(write)-why use this? can edit but not view?

  #  whenever I create a new person this is called
  def initialize(age, name, password)
    @age = age
    @name = name
    @password = password
  end

  # call these on an instance of the class
  def over_18
    if(@age>=18)
      true
    else
      false
    end
  end

  def say_hi
    puts "hi I am #{@name}"
  end

  # CLASS METHOD Here self refers to a class
  def self.about
    "People are A-holes"
  end

  # INSTANCE METHOD
  def about
    #  in a INSTANCE method self refers to the instance calling the method
    "#{self.name} is #{self.age}"
  end

  # def password
  #   @password
  # end

  private
  def only_vis_to_class
    puts "hi"
  end
end

# Initialize an INSTANT of my person class



# These instances live in memory
james = Person.new(100, "James", 123456)
frank = Person.new(16, "Frank", 654321)

puts Person.about
p james.about

james.age = 10000
p james.age
p james.name
p james.password
p james.only_vis_to_class
# p x
# james.say_hi
# frank.say_hi

class PokerPlayer < Person 
  def gamble
    puts "Gambling"
  end
  
end

class Dancer < Person
  def dance
    puts "Dancing" 
  end
end
  
  

# jim = PokerPlayer.new(16, "Jim")
# george = Dancer.new(18, "George")

# jim.say_hi
# george.say_hi
# jim.gamble
# george.dance