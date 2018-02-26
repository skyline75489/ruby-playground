require 'pp'

b = -> { puts "Hello" }
b.call

c = lambda { puts "I'm in lambda" }
c.call

var1 = 5
var2 = '2'
pp var1 + var2.to_i

a = 'hello'
a << 'world'

5.times { puts "Nice!\n" }

def opt_args(a, *x, b)
    puts a
    puts x
end

def downer(string)
    string.downcase!
end

def say_goodnignt(name)
    "Good night #{name}"
end

opt_args(1, 2, 3, 4, 5)

a = "HELLO"
downer(a)

pp a
pp say_goodnignt "Me"

pp %w{ this is an array of string}

def mtdarray
    5.times do |num|
        square = num * num
        return square
    end
end

year = 2000
leap = case
    when year % 400 == 0 then true
    when year % 100 == 0 then false
    when year % 4 == 0
    end
pp leap

def call_block_test
    yield('hello', 99)
end

call_block_test do |str, num|
    pp str + ' ' + num.to_s
end

x = 10

5.times do |y; x|
    x = y
    pp "x inside the block : #{x}"
end

pp "x outside the block: #{x}"

class Dog
    def initialize(breed, name)
        @breed = breed
        @name = name
    end

    def bark
        pp "Ruff! Ruff!"
    end

    def display
        puts "I am of #{@breed} and my name is #{@name}"
    end
end

d = Dog.new("Labrador", "Benzy")
d.display

def func_test some_proc, arg
    some_proc.call arg
end

p = lambda do |a|
    pp "asfasdf"
end

func_test(p, 5)