
class Robot
  DIRECTIONS = {:north => 1, :east => 2, :south => 3, :west => 4}
  
  attr_reader :bearing, :coordinates
  
  def initialize
    @bearing = ''
    @coordinates = []
  end

  def orient(direction)
    raise ArgumentError, "that is not a proper direction" if !DIRECTIONS.keys.include?(direction)
    @bearing = direction 
  end

  def turn_right
    @bearing = DIRECTIONS.key(DIRECTIONS[@bearing] + 1) || :north
  end

  def turn_left
    @bearing = DIRECTIONS.key(DIRECTIONS[@bearing] - 1) || :west
  end

  def at(x, y)
    @coordinates << x << y
  end

  def advance
    case bearing
    when :east  then @coordinates[0] += 1
    when :west  then @coordinates[0] -= 1
    when :north then @coordinates[1] += 1
    when :south then @coordinates[1] -= 1
    end
  end
end

class Simulator

  def instructions(command)
    commands = []
    command.each_char do |char|
      commands << letter_to_command(char)
    end
    commands
  end

  def place(robot, placement)
    robot = robot
    robot.orient(placement[:direction])
    robot.at(placement[:x], placement[:y])
  end

  def evaluate(robot, commands)
    robot = robot
    commands = instructions(commands)
    commands.each do |command|
      robot.send(command)
    end
  end

  private

  def letter_to_command(letter)
    case letter
    when "A" then :advance
    when "L" then :turn_left
    when "R" then :turn_right
    else          raise ArgumentError, "Invalid Command"
    end
  end
end

























