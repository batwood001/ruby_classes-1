class Pet
	def initialize(dog_color)
		@color = dog_color
	end

	def return_color
		return @color
	end
		
	def speak
		return ['woof!', 'moo!', 'meow!'].sort_by { rand }[2]
	end

	def name
		return ['b', 'c', 'd'].sort_by { rand }[2].upcase + ['a', 'o', 'e'].sort_by { rand }[2] + ['b', 'c', 'd'].sort_by { rand }[2]
	end
end


def newDog()
	puts "Do you want a new dog? Y or N"

	answer_dog = gets.chomp

	case answer_dog
	when "Y"
		Kernel.puts "In this strange universe, you get to choose your dog's color but not its name. What color dog do you want?"
		dog_color = gets.chomp
		dog = Pet.new(dog_color)
		puts "Your dog's name is #{dog.name}, it is #{dog.return_color}, and it says '#{dog.speak}'"

	when "N"
		Kernel.puts "That's too bad."
	else
		Kernel.puts "Error: does not compute."
	end
end

play = true

while play
	newDog()
	puts "Restart? Y or N"
	restart_ans = gets.chomp
	if restart_ans == "Y"
		play = true
	else
		play = false
	end
end




class Marker
  def set_color(my_color)
    @color = my_color
  end

  def write
    Kernel.puts("I am writing with a #{@color} marker!")
  end
end
