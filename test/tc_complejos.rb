require 'lib/complejos'
require 'test/unit'

class Tc_complejos < Test::Unit::TestCase
  
	def setup
	  @a = Complejos.new(3,6)
	  @b = Complejos.new(2,2)	
	end
	def tear_down
	  #nothing
	end
	
	def test_simple
	  assert_equal("(3 + 6i)",@a.to_s)
	  assert_equal("(15 + 30i)",(@a | 5).to_s)
	  assert_equal("(-27 + 36i)",(@a * @a).to_s)
	  assert_equal("(1 + 4i)",(@a - @b).to_s)
	  assert_equal("(1 + 0i)",(@a % @a).to_s)
	end	
end