# Count the number of 'increasing' and 'decreasing' numbers less than a power of 10. You pass the power you want to raise 10 to as the arg, and it finds all inc and dec numbers less than that. Ex_Inc = 12345, Ex_Dec = 98765
def total_inc_dec(x)
  if x <= 2
    return 10**x
  end
  i = 10**x
  n = 100
  j = 100
  q = 45
  p = 2
  r = 9
  l = 3
  until j == 1000
    n += (q + p)
    q -= r
    p += l
    r -= 1
    l += 1
    j += 100
  end
  until j == i
    num = j.to_s
    if num[0] <= num[1] && is_inc?(num)
      n += 1
    elsif num[0] >= num[1] && is_dec?(num)
      n += 1
    end
    j += 1
  end
  return n
end




def is_inc?(n)
  i = 0
  until i == n.length-1
    if n[i] <= n[i+1]
      i += 1
    else 
      return false
    end
  end
  true
end

def is_dec?(n)
  i = 0
  until i == n.length-1
    if n[i] >= n[i+1]
      i += 1
    else 
      return false
    end
  end
  true
end

Benchmark.bm do |bm|
  bm.report{total_inc_dec(7)}
end

p total_inc_dec(4)
p is_inc?('12945')
 p is_dec?('101')
arr = (2000...3000)

n = 0
arr.each do |num|
  if is_inc?(num.to_s)
    p num
    p is_inc?(num.to_s)
    n += 1
  end
end
p n



# DEC:
# 4 => 10 => 20 => 35 => 56 => 84  => 120 => 165 => 220
#   6     10    15    21    28     36     45     55


## recursive strategy, slower than iterative
# def rec_total_inc_dec(x)
#   if x <= 2
#     return 10**x
#   end
#   i = 10**x
#   check_num_arr = (101..10**x).to_a
#   n = 100
#   check_num_arr.each do |num|
#     if rec_is_inc?(num.to_s)
#       n += 1
#     elsif rec_is_dec?(num.to_s)
#       n+= 1
#     end
#   end
#   return n
# end

# def rec_is_inc?(n)
#   if n.length <= 2 && (n[0] <= n[1])
#     return true
#   end
#   if n[0] <= n[1]
#     n[0] = ''
#     is_inc?(n)
#   else
#     false
#   end
# end


# def rec_is_dec?(n)
#   if n.length <= 2 && (n[0] >= n[1])
#     return true
#   end
#   if n[0] >= n[1]
#     n[0] = ''
#     is_dec?(n)
#   else
#     false
#   end
# end