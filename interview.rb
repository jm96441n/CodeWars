require 'pry'


def find_paths(maze,partial_path=[[0,0]],paths=[])
    return paths if maze.empty?
    last_cell = partial_path.last
    

end

def adjacent?(a,b)
    ra,ca = a
    rb,cb = b
    ((ra==rb)) && (ca==cb+1)) || ((ca==cb) && (ra==rb+1))
end
a = [
    [1,1,1,1],
    [1,1,1,1],
    [1,1,1,1]
]

b = [[1,1],
     [0,1]]

p numberOfPaths(a)