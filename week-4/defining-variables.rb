#Solution Below

first_name = "Prince"
last_name = "Sadie"
age = 23


# RSpec Tests. They are included in this file because the local variables you are creating are not accessible across files. If we try to run these files as a separate file per normal operation, the local variable checks will return nil.


describe 'first_name' do
  it "is defined as a local variable" do
    expect(defined?(first_name)).to eq 'local-variable'
  end

  it "is a String" do
    expect(first_name).to be_a String
  end
end

describe 'last_name' do
  it "is defined as a local variable" do
    expect(defined?(last_name)).to eq 'local-variable'
  end

  it "be a String" do
    expect(last_name).to be_a String
  end
end

describe 'age' do
  it "is defined as a local variable" do
    expect(defined?(age)).to eq 'local-variable'
  end

  it "is an integer" do
    expect(age).to be_a Fixnum
  end
end

#How do you define a local variable?
#A local variable is defined by giving a name proceeded by an "=" symbol and the data to be held.

#How do you define a method?
#A method can be defined as follows:
#def NAME_OF_METHOD
#   DO_THINGS
#end

#What is the difference between a variable and a method?
#I like to think of variables as like nouns and methods as verbs. Variables contain pieces of information to be used or acted on later and methods actually "do" things.

#How do you run ruby program from the command line?
#Running a ruby program from the command line is as simple as "ruby NAME_OF_FILE"

#How do you run an RSpec file from the command line?
#Running an RSpec file from the command line is just as simple as running a ruby program, "rspec NAME_OF_FILE"

#What was confusing about this material? What made sense?
#I didn't think there was too much confusing stuff about this material. Most of it made sense and only really had trouble with the "address" part of the section. I kept trying to "puts" the output rather than "return" it.