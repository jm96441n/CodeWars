  @num_to_str = {
  	1000 => 'M',
  	500 => 'D',
  	100 => 'C',
  	50 => 'L',
  	10 => 'X',
  	5 => 'V',
  	1 => 'I'
  }

def solution(num, str='')
	num_arr = num.to_s.chars.map(&:to_i)
	num_arr.reverse!
	num_arr.each_with_index do |num,idx|
		num_arr[idx] = num * (10**idx)
	end
	# num_arr.each do |num|
		
	# end
end


p solution(5)
p solution(125)
p solution(500)
p solution(67)
p solution(245)