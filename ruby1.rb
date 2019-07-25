#MethodsExercise----------------------------------
#1
def greeting(name)
  puts "Hey #{name}"
end
 puts greeting("Tom")

#3
def multiply(x, y)
  x*y
end
 puts multiply(2,3)

#5
def scream(words)
  puts words = words + "!!!!"
end

scream("Yo")

#FlowControlExercise-----------------------------
#2
def caps(word)
  if word.length >= 10
  puts word.upcase
  else
  puts "Needs more letters!"
  end
end

caps("ttretretetretre")

#3
puts "Give me a number: "
input_num = gets.chomp.to_i

if input_num > 100
  puts "Over 100"
elsif input_num <= 100 && input_num > 50
  puts "between 51 and 100"
elsif input_num <= 50 && input_num > 0
puts "between 0 and 50"
else
  puts "Negative number"
end

#5
puts "Give me a number: "
input_num = gets.chomp.to_i

case
when input_num > 100
  puts "Over 100"
when input_num > 50
  puts "between 51 and 100"
when input_num > 0
  puts "between 0 and 50"
else
  puts "Negative number"
end

#LoopsandIterationsExercise ---------------------
#2
loop do
  puts "Want to continue?"
  order = gets.chomp
  if order == "STOP"
    break
  end
end

#3
movie_array = ["interstellar", "billiemadinson"]
movie_array.each_with_index do |movie, index|
  puts "#{movie} in position #{index}"
end

#4
def tozero(x)
  if x <= 0
    puts "Zero or neg number"
  else
    puts x
    tozero(x-=1)
  end
end

#ArrayExercises------------------------------
#7
o_array = [1, 2, 3, 4, 5]
new_array = o_array.map{|x| x+2}
p o_array
p new_array

#HashExercises----------------------------------
#1
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]}

imm_family = family.select{|key, value| key == :sisters || key == :brothers}
imm_family = imm_family.flatten
p imm_family

#3
compounds = [story: time, table: cloth, happy: days]
p compounds.keys
p compounds.values
p compounds.keys + compunds.values

#6
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
anagram = {};
words.each do |x|
  letters = x.split('').sort.join
  if anagram.has_key?(letters)
    anagram[letters].push(x)
  else
    anagram[letters] = [x]
  end
end

anagram.each_value do |value|
  puts "-----------"
  p value
end
