##Convert decimal base numbers to factorial base and back

def dec2FactString(nb, fact_str='', i = 35)
  if fact_str.length == 35
    fact_str.gsub!(/^[0:]*/,'')
    return fact_str + '0'
  end
  n = factorial(i)
  new_num = nb % n
  fact_str += @fact_hash[(nb / n)]
  dec2FactString(new_num, fact_str, i-=1)
end


def factString2Dec(str)
  dec_hash = @fact_hash.invert
  num_arr = str.split('')
  nb = 0
  n = num_arr.length
  num_arr.each_with_index do |num, i|
    nb += (dec_hash[num] * factorial(n - i))
  end
  nb
end

def factorial(n)
  new_num = 1
  until n == 1
    new_num *= n
    n -= 1
  end
  new_num
end

@fact_hash = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9',
  10 => 'A',
  11 => 'B',
  12 => 'C',
  13 => 'D',
  14 => 'E',
  15 => 'F',
  16 => 'G',
  17 => 'H',
  18 => 'I',
  19 => 'J',
  20 => 'K',
  21 => 'L',
  22 => 'M',
  23 => 'N',
  24 => 'O',
  25 => 'P',
  26 => 'Q',
  27 => 'R',
  28 => 'S',
  29 => 'T',
  30 => 'U',
  31 => 'V',
  32 => 'W',
  33 => 'X',
  34 => 'Y',
  35 => 'Z'
}



p factorial(5)
p "dec to factorial conversion of 5239813538 to AB29453440100"
p dec2FactString(5239813538)
p factString2Dec('AB29453440100')
p "dec to factorial conversion of 36288000 to A0000000000"
p dec2FactString(36288000)
p factString2Dec('A0000000000')
p "dec to factorial conversion of 463 to 341010"
p dec2FactString(463)
p factString2Dec("341010")


# # 36288000 => A0000000000
# # 5239813538 => AB29453440100