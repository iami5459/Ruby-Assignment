=begin
	resorces:
	assignment handout
	stack overflow
	ruby-doc.org
	http://gist.gethub.com/tomtung/1973534
=end
def count_words(string)
	hash ={}
		#{} create a hash table type object.
	string.downcase.scan(/[\w]*/).each do |word|
		#downcase: lowers the case of all letters in the string.
		#scan finds all instances of what is requested using regex.
		#[\w]* will match any word as many times as it comes up
		#|word| takes the result of the preceeding code and pipes it to  a new variable called word
	next if word.empty?
		if hash[word] == nil || hash[word] == ''
			hash[word] = 1
			# checks hash table for exsistance of a given word if it does not exsist it adds it.
		else 
			hash[word] = (hash[word]+1)
			# If it does exsist it adds +1 to its total count.
		end
	end 
puts hash
end


#count_words("A man, a plan, a canal -- Panama")
