=begin
	resorces:
	assignment handout
	stack overflow
	ruby-doc.org
	http://gist.gethub.com/tomtung/1973534
=end
class HelloWorldClass
	def initialize(name)
		@name = name.capitalize
			#capitalize uppercases the first character in a string and lowercases then rest.
			#@ defines an instance variable as opposed to a class.
	end
	def sayHi
		puts "Hello #{@name}!" #prints hello
	end
end
#hello = HelloWorldClass.new("ian miller")
#hello.sayHi
