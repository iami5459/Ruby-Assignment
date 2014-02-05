=begin
	resorces:
	assignment handout
	stack overflow
	ruby-doc.org
	http://gist.gethub.com/tomtung/1973534
=end
class CartesianProduct
	include Enumerable
		def initialize(a1, a2)
		c = a1.product(a2).collect{|x| x}
			#product multiplies two numbers together.
			#collect takes an array and creates a new array that holds each itteration of a nearby call as a sperate object.
		c.each{ |x| puts x.to_s}#calls the block once for each object in the array
		end
		
end

c = CartesianProduct.new([1,2],[:a,:b])
#c.each{ |x| puts x.inspect}
