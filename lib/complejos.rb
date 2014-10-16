Class Complejo
	attr_reader :a, :b, :c, :d
	  def initialize(a,b)
		  @a=a
		  @b=b
     	  end
	def to_s
	"(#{@a},#{@b}i)"
	end
	def +(other)
	Complejo.new( @a + other.a, @b + other.b )
	end
	def -(other)
	Complejo.new( @a - other.a, @b - other.b )
	end
	def *(other)
	Complejo.new( (@a * other.a) - (@b * other.b),(@a * other.b) + (@b * other.a) )
	end
	def /(other)
	Complejo.new((@a * other.a +@b * other.b )/(other.a**2 + other.b**2) ,(@b * other.a - @a * other.b) / (other.a**2 + other.b**2))
	end
	def prod_escal(other)
	Complejo.new( @a * other.r, @b * other.r)
	end 

end
