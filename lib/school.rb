class School

attr_accessor :name, :roster

    def initialize(name)
        @name = name 
        @roster = {}
    end

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end

    def grade(year)
        return roster[year]
    end

    def sort
    sorted = {}
        roster.map do |grade, students|
            sorted[grade] = students.sort
        end
    return sorted
    end

end

