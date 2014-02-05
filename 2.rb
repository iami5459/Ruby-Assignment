=begin
	resorces:
	assignment handout
	stack overflow
	ruby-doc.org
	http://gist.gethub.com/tomtung/1973534
=end
def palindrome?(string)
	letters = string.downcase.scan(/\w/)
			#downcase: lowers the case of all letters in the string.
			#scan finds all instances of what is requested using regex.
			#(/\w/) the regex modifier to find word objects.
		if letters == letters.reverse
			#reverse swaps the order of all charaters in a given string.
		puts "True"
		else
		puts "False"
	end
end

#palindrome?("A man, a plan, a canal -- Panama")

class String
	def palindrome?
		Object.send(:palindrome?, self) # send calls palindrome? with self as the argument
	end
end

module Enumerable	#adds Enmerable as a Mixin
	def palindrome?
		self.collect{|x| x} == self.collect{|x| x}.reverse#collect takes an array and creates a new array that holds each itteration of a nearby call as a sperate object.
	end
end
		
