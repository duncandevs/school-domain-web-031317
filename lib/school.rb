# code here!
require 'pry'
class School
  #attr_accessor

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if !@roster.has_key?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    result = {}
    @roster.sort.to_h.collect do |key, value|
      result[key] = value.sort
    end
    result
  end
end
