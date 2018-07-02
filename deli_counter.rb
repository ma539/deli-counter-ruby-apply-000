# Write your code here.

katz_deli = []



def take_a_number(katz_deli)
  count = 1
  katz_deli << count
  puts "Welcome! You're ticket number #{count}"
  count +=1
end

# take_a_number(katz_deli) => "Welcome! You're ticket number #1" [1]
# take_a_number(katz_deli) => "Welcome! You're ticket number #2" [1, 2]

# now_serving(katz_deli) => "Currently Serving: #1" [2]
# now_serving(katz_deli) => "Currently Serving: #2" []

# take_a_number(katz_deli) => "Welcome! You're ticket number #3" [3]


def take_a_number (katz_deli, name)
  katz_deli << name
  puts ("Welcome, #{name}. You are number #{katz_deli.length} in line.")
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    status = "The line is currently: "
    katz_deli.each.with_index(1) do |value, index|
      status << "#{index}. #{value} "
    end
    puts(status.chop)
  end
end