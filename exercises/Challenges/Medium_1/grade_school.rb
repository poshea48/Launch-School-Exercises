# input
#   students name and grade

# output
#   add students name and grade to roster
#   list of all students in a grade
#   sort list by grade starting at 1

# algorithm
#   school = Hash.new {grade(int) => [names]}
#   def add(name, grade)
#     school[grade] = name
#   end

#   def to_h
#     school
#   end

#   def grade(grade)
#     school.values_at(grade)
#   end
class School
  attr_accessor :school
  def initialize
    @school = Hash.new {|school, grade| school[grade] = []}
  end

  def to_h
    school.sort.to_h
    #school.values.each {|grade| grade.sort!}
    #Hash[school.sort_by {|k, _| k}]
  end

  def add(name, grade)
    school[grade].push(name).sort!
  end

  def grade(grade)
    #school.values_at(grade).sort!.flatten
    school[grade]
  end
end

school = School.new
school.add('Bradley', 5)
school.add('Franklin', 5)
school.add('Adam', 5)
school.add('Paul', 1)
school.add('Jeff', 1)
p school.grade(5)
p school.to_h

