require 'pry'

def my_all?(array)
  i = 0
  while i < array.size
    yield(array[i])
    i += 1
  end
end
