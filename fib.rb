# Define a recursive function that takes an argument n and returns the fibonacci value of that position. The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21... So fib(5) should return 5 and fib(6) should return 8.
@f = [0, 1]
def fibs_rec(n)
  @f.length >= n ? @f.take(n) : (@f << (@f[@f.length - 1] + @f[@f.length - 2])) && fibs_rec(n)
end
# fibs_rec(55)

def fibs(n)
  @f.length.upto n do
    (@f << (@f[@f.length - 1] + @f[@f.length - 2]))
  end
  @f
end
# fibs(6)
