# Roll 5 dice and record/calculate the score based on the values for possible points
 # Three 1's => 1000 points
 # Three 6's =>  600 points
 # Three 5's =>  500 points
 # Three 4's =>  400 points
 # Three 3's =>  300 points
 # Three 2's =>  200 points
 # One   1   =>  100 points
 # One   5   =>   50 point
  @score_hash = {
    6 => { 3 => 600},
    5 => {
      3 => 500,
      1 => 50
    },
    4 => { 3 => 400 },
    3 => { 3 => 300 },
    2 => { 3 => 200 },
    1 => {
      3 => 1000,
      1 => 100
    }
  }


def score( dice )
  h = Hash.new
  score = 0
  dice.each do |num|
    if h[num]
      h[num] += 1
      if h[num] == 3
        score += @score_hash[num][3]
        h[num] = 0
      end
    else
      h[num] = 1
    end
  end
  h.each do |k,v|
    if @score_hash[k][1]
      score += @score_hash[k][1] * v
    end
  end
  return score
end


p score( [2, 2, 2, 3, 3] )
p score( [2, 4, 4, 5, 4] )
p score( [2,4,4,5,5,4] )
p score( [2,5,5,5,5,2] )
