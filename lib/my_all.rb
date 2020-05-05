require 'pry'

def my_all?(collection)
  i = 0
  while i < collection.size
    if yield(collection[i])
      i += 1
      if i == collection.size
        return true
      end
    else
      return false
    end
  end
end

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i += 1
  end
  if block_return_values.include?(false)
    false
  else
    true
  end
end