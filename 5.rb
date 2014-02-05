=begin
	resorces:
	assignment handout
	stack overflow
	ruby-doc.org
	http://gist.gethub.com/tomtung/1973534
=end
def combine_anagrams(words)
	sorted = words.group_by{ |word| word.downcase.chars.sort }.values
		#goup_by groups: a list into a hash table based off the rules provided.
			#downcase: puts all characters in lowercase.
			#chars: turns string into an array of the characters in the string.
			#sort: sorts an array.
			#values: takes the values out of each hash entry to make an array of arrays containing the hash entries.
	sorted.each{ |x| puts x.to_s}
	
end

#combine_anagrams(['cars', 'for', 'potatos', 'racs', 'four', 'scar', 'creams', 'scream'])
