require 'pry'
def is_interesting(number, awesome_phrases) 
	one_away = number + 1
	two_away = number + 2
	numbers_to_check = [number,one_away,two_away]
	return 0 if number < 98
	numbers_to_check.each do |num|
		if is_inc?(num) || is_dec?(num) || num.to_s[1..-1].to_i == 0 || is_palidrome?(num) || is_awesome_phrase?(num,awesome_phrases) || num == 100
			if num == number 
				return 2
			elsif num == one_away||num == two_away 
				return 1
			end
		end
	end
	return 0
end

def is_awesome_phrase?(n,awesome_phrases)
	true if awesome_phrases.include?(n)
end

def is_inc?(n)
	n = n.to_s
	return false if n.length < 3
  i = 0
  if n[-1] == '0'
  	n = n[0...-1]
  end
  until i == n.length-1
    if n[i] <= n[i+1] && n[i+1].to_i == n[i].to_i + 1
      i += 1
    else 
      return false
    end
  end
  true
end

def is_dec?(n)
	n = n.to_s
	return false if n.length < 3
  i = 0
  until i == n.length-1
    if n[i] >= n[i+1] && n[i+1].to_i == n[i].to_i - 1
      i += 1
    else 
      return false
    end
  end
  true
end

def is_palidrome?(n)
	n = n.to_s
	mid = n.length/2
	if n[0..mid] == n[mid..-1].reverse
		return true
	end
	false
end

p is_interesting(98, [1337,256])
p is_interesting(99, [1337,256])
# p is_interesting(67890, [1337,256])
# p is_interesting(1336, [1337, 256])
# p is_interesting(3, [1337, 256])
# p is_interesting(11211, [1337, 256])