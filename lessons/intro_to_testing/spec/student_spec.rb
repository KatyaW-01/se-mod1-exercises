# Add the 2 requires you will need here
require 'rspec'
require './lib/student'

describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      student = Student.new("Penelope")

      expect(student).to be_a(Student)
      # be_a "is this an instance of?"
    end
    # test it has a name
    it 'has a name' do
      student = Student.new("Samantha")
      expect(student.name).to eq('Samantha')
      #eq "is this equivalent to? is it the same?"

    end
    # test it has cookies
    it 'has cookies' do
      student = Student.new("Marcus")
      expect(student.cookies).to eq ([])

    end

  end

  describe 'behaviors' do
    # test it can add cookies
    it 'can add cookies' do
      student = Student.new('Megan')

      student.add_cookie('Chocolate Chunk')
      student.add_cookie('Snickerdoodle')

      expect(student.cookies).to eq(['Chocolate Chunk','Snickerdoodle'])
    end
  end
end