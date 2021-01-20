require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

st1 = Student.new("Ada")
st2 = Student.new("Ben")
st3 = Student.new("Cory")
st4 = Student.new("Daisy")

in1 = Instructor.new("Coach A.")
in2 = Instructor.new("Coach B.")

st1.add_boating_test("Navigating", "passed", in1)
st1.add_boating_test("Anchoring", "passed", in1)
st1.add_boating_test("Paddling", "failed", in1)
st1.add_boating_test("Troubleshoot", "passed", in2)
st2.add_boating_test("Navigating", "pending", in1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

