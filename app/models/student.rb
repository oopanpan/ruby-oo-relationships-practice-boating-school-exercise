class Student

    attr_reader :first_name

    @@all =[]

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def add_boating_test(test_name,test_status,instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def all_tests
        BoatingTest.all.select{|test| test.student == self}
    end
    
    def all_instructors
        all_tests.map{|test| test.instructor}
    end

    def grade_percentage
        all_tests.select{|test| test_status == 'passed'}.count.to_f/all_tests.count.to_f
    end

    def self.all
        @@all
    end

    def self.find_student(first_name)
        self.all.select{|student| student.first_name === first_name}
    end
end
