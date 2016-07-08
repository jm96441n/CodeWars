require 'pry'
require 'benchmark'
def nbr_of_laps(x, y)
	ans_arr = []
	gcd = gcd_recurs(x,y)
	lcm = y*(x/gcd)
	ans_arr << lcm/x
	ans_arr << lcm/y
	return ans_arr
end

def gcd_recurs(x,y)
	if y > 0
		return gcd_recurs(y, x%y)
	else
		return x
	end
end


p nbr_of_laps(5,3)
p nbr_of_laps(4,6)
p nbr_of_laps(5,5)
p nbr_of_laps(21,42)

# Benchmark.bm do |bm|
#   bm.report{nbr_of_laps(5,5)}
# end