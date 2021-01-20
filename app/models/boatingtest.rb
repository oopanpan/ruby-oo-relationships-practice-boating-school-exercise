class BoatingTest

    @@test = []

    attr_accessor :test_status
    attr_reader :student, :test_name, :instructor

    def initialize(student, test_name, test_status, instructor)
        @student = student
        @test_name = test_name
        @test_status = test_status
        @instructor = instructor
        @@test << self
    end

    def self.all
        @@test
    end

    
end
