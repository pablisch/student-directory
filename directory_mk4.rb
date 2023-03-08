students = [
  {name: "Dr. Hannibal Lecter", cohort: :jan },
  {name: "Darth Vader", cohort: :feb },
  {name: "Nurse Ratchet", cohort: :nov },
  {name: "Michael Corleone", cohort: :dec },
  {name: "Alex DeLarge", cohort: :jul },
  {name: "The Wicked Witch of the West", cohort: :feb },
  {name: "Terminator", cohort: :jan },
  {name: "Freddy Krueger", cohort: :mar },
  {name: "The Joker", cohort: :feb },
  {name: "Joffrey Baratheon", cohort: :nov },
  {name: "Norman Bates", cohort: :feb }
  ]

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp
  p name
  # create and empty array
  students = []
  # while the name is not empty, repeat this code
  while !name.empty? do
    
    puts "Which cohort are they in?"
    cohort = gets.chomp.to_sym
    cohort = :unspecified if cohort.empty?
    puts "Now we have #{students.count} students"
    # add the student hash to the array
    students << {name: name, cohort: cohort}

    # get another name from the user
    puts "Please give the name of the next student"
    name = gets.chomp
  end
  # return the array of student hashes
  students
end

# method to print student list header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# method to print the student list names list body
def print_list(students)

  ### 🦠 PART 1 - Filter or sort list if needed
  
  # students.select { |student| student[:cohort].to_s.uniq }.each { |cohort| puts cohort }

  # 👇🏻 sort by cohort using .sort_by
  # students_by_cohort = students.sort_by { |student| student[:cohort] }

  # 👇🏻 sort by cohort using .sort_by concise version
  # students.sort_by { |student| student[:cohort] }

  # 👇🏻 sort by cohort WITHOUT using .sort_by
  # cohorts = []
  # students.map { |student| cohorts << student[:cohort] }
  # cohorts.uniq.map { |cohort| students.select { |student|  } }

  ### 🦠 PART 2 - output students

  # 👇🏻 Basic print names
  # students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
  
  # 👇🏻 with_index to add number before the student name
  # students_by_cohort.each_with_index { |student, index| puts "#{index + 1}: #{student[:name]} (#{student[:cohort]} cohort)".center(50) }
  
  # 👇🏻 to print names that begin with 'P'
  # students.each_with_index { |student, index| puts "#{index + 1}: #{student[:name]} (#{student[:cohort]} cohort)" if student[:name][0].downcase == 'p'  }
  
  # 👇🏻 to print names that are under 12 characters
  # students.each_with_index { |student, index| puts "#{index + 1}: #{student[:name]} (#{student[:cohort]} cohort)" if student[:name].size < 12 }
  
  # 👇🏻 use a while loop in place or .each or .each_with_index
  # i = 0
  # while i < students.size do
  #   puts "#{i + 1}: #{students[i][:name]} (#{students[i][:cohort]} cohort)".center(40)
  #   i += 1
  # end

  ### 🦠 OPTIONAL EXTRA - PARTS 1 & 2 COMBINED!

  # 👇🏻 Sort with .sort_by and .each_with_index to add number
  # students.sort_by { |student| student[:cohort] }.each_with_index { |student, index| puts "#{index + 1}: #{student[:name]} (#{student[:cohort]} cohort)".center(50) }

  # 👇🏻 Sort with .sort_by and .each_with_index to add number
  # students.sort_by { |student| student[:cohort] }.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)".center(50) }

  # 👇🏻 The way that Sidra used
  # cohorts = students.group_by { |student| student[:cohort] }
  # cohorts.each do |cohort, students|
  #   puts "Students in the #{cohort} cohort:"
  #   students.each { |student| puts student[:name] }
  # end

  # 👇🏻 To get the same kind of result
  cohorts = students.map { |student| student[:cohort] }.uniq
  cohorts.each do |cohort|
    puts "#{cohort} cohort:"
    students.each { |student| puts "#{student[:name]}" if student[:cohort] == cohort }
  end

end

# method to print the student list footer
def print_footer(students)
  puts "Overall, we have #{students.count} great students."
end

# students = input_students
# call methods to print out all student list components
print_header
print_list(students)
print_footer(students)
