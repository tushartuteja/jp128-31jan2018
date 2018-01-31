puts "Hello World!"

a = 1
b = true
c = "tushar"

puts c
#print b,a,c

# MyClass
def testing
	52
end

puts testing

# my_class

# public class Person{
# 	private String name;
# 	private int age;
# 	public Person(String name, int age){
# 		this.name = name;
# 		this.age = age;
# 	}

# 	public getName(){
# 		return this.name;
# 	}
# 	public setName(String name){
# 		this.name = name;
# 	}


# }


class Person
	attr_accessor :name

	def initialize name, age
		puts "constructor of person was called with #{name}" 
		@name = name
		@age = age
	end

	def random_function
		return "randomg string #{@name}"
	end


	# def name
	# 	return @name
	# end

	# def name= name
	# 	@name = name
	# end


end


p = Person.new "Tushar", 26
p2 = Person.new "Ravish", 20

puts p
puts p.class
puts p.name
p.name = "Tuteja"
puts p2.name
puts p2.random_function







