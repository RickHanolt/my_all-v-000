require 'pry'

def my_all?(array)
  i = 0
  while i < array.size

    if yield(array[i])
      i += 1
      if i == array.size
        return true
      end
    else
      return false
    end
  end
end
