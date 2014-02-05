=begin
	resorces:
	assignment handout
	stack overflow
	ruby-doc.org
	http://gist.gethub.com/tomtung/1973534
=end
class Dessert
	def initialize(name, calories)
		@name = name	# @ is used for instance variables
		@cal = calories
	end

	def healthy?
		if @cal < 200
			return true
		else
			return false
		end
	end

	def delicious?
		return true
	end
	

	def nameSet(x)	#name setter
		@name = x
	end

	def calSet(x)	#calorie setter
		@cal = x
	end

	def name?	#name getter
		return @name
	end

	def calories?	#calorie getter
		return @cal
	end 
end

class JellyBean < Dessert
	def initialize(name, calories, flavor)
		@name = name
		@cal = calories
		@flav = flavor
	end

	def flavor?		#flavor getter
		return @flav
	end

	def flavSet(f)	#flavor setter
		@flav = f
	end

	def delicious?
		if @flav == "black licorice"
			return false
		else 
			return true
		end
	end
end

#fig = JellyBean.new(fig, 10, 'black licorice')
#puts fig.delicious?
