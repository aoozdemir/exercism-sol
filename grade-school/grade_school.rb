module BookKeeping
  VERSION = 3
end

class School
  def initialize
    @list = Hash.new { [] }
  end

  def add(name, grade)
    @list[grade] <<= name
    @list[grade].sort!
  end

  def students(grade)
    @list[grade]
  end

  def students_by_grade
    @list.sort.map { |grade, name| { grade: grade, students: name } }
  end
end
