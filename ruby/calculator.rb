require 'pry'
class Calculator
  
  def evaluate(string)
  	num_arr = string.split(' ')
  	val_str = ''
  	i = 0
  	num_arr.each do |char|
  		if char == '*'
  			val = num_arr[i-1].to_i * num_arr[i+1].to_i
  			val_str += val.to_s
  		elsif char == '/'
  			# binding.pry
  			val = num_arr[i-1].to_i / num_arr[i+1].to_i
  			val_str += val.to_s
  		end
  		i += 1
  	end
  	return val_str
  end

end


c = Calculator.new

p c.evaluate("2 / 2 + 3 * 4 - 6")