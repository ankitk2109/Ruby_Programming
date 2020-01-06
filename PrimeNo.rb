
class Numeric
  def is_prime?
      for i in 2..Math.sqrt(self)
        if self % i == 0
          return false
        end
      end
      return true
  end
end

#p 16.is_prime?

def find_primes1
  count=0
  for i in 2..100
    if count<20
      bool = i.is_prime?
      if(bool)
        p " This is a prime: #{i}"   
        count += 1
      end
    end
  end
end



def find_primes2(num,count)
  while(count!=0)
    bool = num.is_prime?
    if(bool)
        p " This is a prime: #{num}" 
        #p "count #{count}"  
        count -= 1
    end
    find_primes2(num+1, count)
    break
  end
end

find_primes1

p "---------------------"

find_primes2(2, 20)