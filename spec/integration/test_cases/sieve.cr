#output: 78499
max = 1000000

sieve = Array.new max, true
sieve[0] = false

i = 2
while i < max
  j = i
  if sieve[j]
    j += i
    while j < max
      sieve[j] = false
      j += i
    end
  end
  i += 1
end

i = 0
found = 0
while i < max
  found += 1 if sieve[i]
  i += 1
end

puts found