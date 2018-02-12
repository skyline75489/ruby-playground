b = -> { puts "Hello" }
b.call

c = lambda { puts "I'm in lambda" }
c.call

var1 = 5
var2 = '2'
puts var1 + var2.to_i

a = 'hello'
a << 'world'

5.times { puts "Nice!\n" }

def opt_args(a, *x, b)
    puts a
    puts x
end

def downer(string)
    string.downcase
end

opt_args(1, 2, 3, 4, 5)

a = "HELLO"
downer(a)
puts a