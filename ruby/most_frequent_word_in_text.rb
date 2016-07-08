def top_3_words(text)
  text_arr = text.split(' ')
  text_hash = Hash.new
  text_arr.each do |word|
  	word[-1] = '' if word[-1] == ','
  	word.downcase!
  	if text_hash[word]
  		text_hash[word] += 1
  	else
  		text_hash[word] = 1
  	end
  end
  text_arr = text_hash.sort_by{|k,v| v}
  top_words = Array.new
  top_words.push(text_arr[-1],text_arr[-2],text_arr[-3]).flatten!
  top_words.delete_if{|n| n.is_a?(Integer) || n == nil}
  
end


p top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")

p top_3_words("a banana")