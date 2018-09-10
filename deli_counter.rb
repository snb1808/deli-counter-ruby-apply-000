katz_deli = []

$ticket_number = 1

def take_a_number(katz_deli)
  katz_deli.push($ticket_number)
  puts "Welcome! You're ticket number #{$ticket_number}"
  $ticket_number += 1
  # ticket_number = ticket_number + 1
end


# take_a_number(katz_deli) => "Welcome! You're ticket number #1" [1]

# take_a_number(katz_deli) => "Welcome! You're ticket number #2"

# now_serving(katz_deli) => "Currently serving: #1"
# now_serving(katz_deli) => "Currently serving: #2" []

# take_a_number(katz_deli) => "Welcome! You're ticket number #3"



def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    message = "The line is currently:"
  katz_deli.each_with_index do |name,index|
    message += " #{index.to_i+1}. #{name}"
  end
  puts "#{message}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  position = katz_deli.index(name)
  puts "Welcome, #{name}. You are number #{katz_deli.index(name)+1} in line."
  return name, position
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end