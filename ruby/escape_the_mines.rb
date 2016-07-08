require 'pry'

def solve(minemap, miner, exit_mine, move_arr=[])
  if miner == exit_mine
  	return move_arr
  end
  binding.pry
 	if up?(miner,minemap) == 'up'
 		move_arr << 'up'
 		up_miner = miner
 		up_miner['x'] -= 1
 		binding.pry
 		return solve(minemap,up_miner,exit_mine,move_arr)
  end
  if down?(miner,minemap)
  	move_arr << 'down'
  	down_miner = miner
  	down_miner['x'] += 1
  	binding.pry
  	return solve(minemap,down_miner,exit_mine,move_arr)
  end
  if right?(miner,minemap)
  	move_arr << 'right'
  	right_miner = miner
  	right_miner['y'] += 1
  	binding.pry
  	return solve(minemap,right_miner,exit_mine,move_arr)
  end
  if left?(miner,minemap)
  	move_arr << 'left'
  	left_miner = miner
  	left_miner['y'] -= 1
  	return solve(minemap,left_miner,exit_mine,move_arr)
  end
end

def up?(miner,map)
	binding.pry
	if (miner['x'] > 0) && map[miner['x']-1][miner['y']]
		return true
	else 
		return false
	end
end


def down?(miner,map)
	if (miner['x'] < map.length-1) && map[miner['x']+1][miner['y']]
		return true
	else
		return false
	end
end

def right?(miner,map)
	if (miner['y'] < map[0].length-1 && map[miner['x']][miner['y']+1])
		return true
	else
		return false
	end
end

def left?(miner,map)
	if (miner['y'] > 0 && map[miner['x']][miner['y']-1])
		return true
	else
		return false
	end
end

minemap = [[true, false, true],
    			 [true, true, true]]

p solve(minemap, {'x'=>0,'y'=>0}, {'x'=>0,'y'=>2})
