# create an array of students
students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratchet",
"Michael Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates"
]

# first we print the list of students
puts "The students of Villains Academy"
puts "-------------"
students.each { |student| puts student }

# print the total number of students
puts "Overall, we have #{students.count} great students."