def fib1(arr)
  count = 0
  i = 0
  j = 1 
  while(count!=10)
    next_ele = arr[i]+arr[j]
    arr << next_ele
    i += 1
    j += 1
    count += 1
  end
  return arr
end

def fib2(arr,count,i,j)
  if(count !=0)
    next_ele = arr[i]+arr[j]
    arr << next_ele
    fib2(arr,count-1,i+1,j+1)
  end
  return arr
end

arr=[0,1]
#p fib1(arr)

p fib2(arr,10,0,1)