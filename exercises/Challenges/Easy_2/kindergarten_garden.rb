require 'pry'
class Garden
  PLANTS = {"V" => :violets, "C" => :clover, "R" => :radishes, "G" => :grass}
  attr_accessor :diagram, :students
  def initialize(diagram, students=["Alice", "Bob", "Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry"])
    @shelf1, @shelf2 = diagram.split(/\n/)
    @students = students.sort
    @class = Hash.new([])
    index = 0
    @students.each do |student|
      @class[student.downcase] = [@shelf1[index..index + 1], @shelf2[index..index + 1]]
      index += 2
    end
    @class.keys.each do |name|
      define_singleton_method(name) {plant_initial_to_name(@class[name])}
      #self.class.send(:define_method, name) {plant_initial_to_name(@class[name])}
    end
    #binding.pry
  end

  private

  def plant_initial_to_name(array)
    names = []
    array.each do |initial|
      initial.split('').each {|letter| names << PLANTS[letter]}
    end
    names
  end

end

garden = Garden.new("VVCCGG\nVVCCGG")
p garden.alice
















































































