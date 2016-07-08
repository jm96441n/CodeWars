# find if two stations connect

def check_trip( start, target, stations, station_links )
  if check_it_out?( start, target, stations, station_links )
    return "Possible"
  else
    return "Impossible"
  end
end 

def check_it_out?( start, target, stations, station_links, past_stations={} )
  if start == target
    return true
  end
  res = false
   if station_links[start]
    station_links[start].each do |station|
      if !past_stations[station]
        past_stations[start] = 1
        res = check_it_out?(station, target, stations, station_links, past_stations)
      end
    end
  end
  return res
end

stations = ["ADL", "MEL", "SYD", "BRI"]

links = {"ADL" => ["MEL"], "MEL" => ["ADL", "SYD"],  "SYD" => ["BRI"]}
links.default = []

def check_it_out?( start, target, stations, station_links )
  current = start
  past_stations = Hash.new
  i = 0
  until current == target
    if station_links[current].length != 0
      this_station = station_links[current][i]
      else 
        # binding.pry
        i += 1
      end
    else
      # binding.pry
      false
    end
  end
  return true
end


p check_it_out?( "ADL", "BRI", stations, links )
p check_trip( "ADL", "BRI", stations, links )
p check_trip( "MEL", "BRI", stations, links )
p check_trip( "BRI", "MEL", stations, links )
# Benchmark.bm do |bm|
#   bm.report{check_trip( "MEL", "BRI", stations, links )}
# end
# Test.assert_equals( check_trip( "ADL", "BRI", stations, links ), "Possible")
# Test.assert_equals( check_trip( "MEL", "BRI", stations, links ), "Possible")
# Test.assert_equals( check_trip( "SYD", "ADL", stations, links ), "Impossible")
