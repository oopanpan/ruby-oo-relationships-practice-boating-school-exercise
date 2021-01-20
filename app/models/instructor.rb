class Instructor

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def all_tests
        BoatingTest.all.select{|test| test.instructor == self}
    end

    def passed_students
        all_tests.select{|test|test.test_status == 'passed'}
    end

    def pass_student(student, test_name)
        student_record = all_tests.find{|test| test.student == student && test.test_name == test_name}
        student_record ? student_record.test_status='passed' : student_record = BoatingTest.new(student, test_name, 'passed', self)
        student_record
    end

    def fail_student(student, test_name)
        student_record = all_tests.find{|test| test.student == student && test.test_name == test_name}
        student_record ? student_record.test_status='failed' : student_record = BoatingTest.new(student, test_name, 'failed', self)
    end

    def all_students
        all_tests.map{|test| test.student}
    end

end
