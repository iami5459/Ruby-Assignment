=begin
	resorces:
	assignment handout
	stack overflow
	ruby-doc.org
	http://gist.gethub.com/tomtung/1973534
=end
class Numeric
	@@currencies = {'dollar'=> 1.0,'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
	def method_missing(missing_id)
		singular_currency = to_single(missing_id)
		if @@currencies.has_key?(singular_currency) #checks to see if a hash key is present
			self*@@currencies[singular_currency]
		else
			super #attempts to call the same method on a super class of this class
		end
	end

	def in(currency)
		singular_currency = to_single(currency)
		if @@currencies.has_key?(singular_currency)
			self / @@currencies[singular_currency]
		else 
			super
		end
	end
	def to_single(x)
		x.to_s.gsub(/s$/, '')# gsub returns a copy of the string with all occurances of s subsituted with nothing
	end
end

#puts 5.euro.in(:dollar)
