# creating array of set number of fibonnaci numbers without recursion
def fibs(n)
  i = 0
  arr = []
  while arr.length < n do
    if i == 0
      arr.push(0)
      i = 1
    elsif i == 1
      arr.push(1)
      arr.push(1)
      i = 2
    else
      arr.push(i)
      i = arr[-1] + arr[-2]
    end
    i = i.to_i
  end
  p arr
end

# while i < n
  # if i = 0
  # add zero to the array
  # make next number 1
  # if i = 1
  # add one to the array twice
  # make next number 3
  # for all other numbers
  # add current number to array
  # calculate new number

fibs(20)

# creating array of set number of fibonnaci numbers with recursion
def fibs_rec(n, i = 0, arr = [])
  if arr.length < n
    if i == 0
      arr.push(0)
      fibs_rec(n, 1, arr)
    elsif i == 1
      arr.push(1)
      arr.push(1)
      fibs_rec(n, 2, arr)
    else
      arr.push(i)
      i = arr[-1] + arr[-2]
      fibs_rec(n, i, arr)
    end
  else
    p arr
  end
end

fibs_rec(20)

# if arr.length < n
  # if i == 0
    # add zero to the array
    # redo function with i = 1
  # if i = 1
    # add one to the array twice
    # redo function with i = 2
  # else
    # add i to array
    # i = arr[-1] + arr[-2]
    # redo function with i