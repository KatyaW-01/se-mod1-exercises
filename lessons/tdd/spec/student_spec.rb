require 'rspec'
require './lib/student'

describe Student do
    it 'exists' do
        student = Student.new("Sophocles", 1)

        expect(student).to be_instance_of(Student)

    end

    it "has a name" do
        student = Student.new("Sophocles", 1)

        expect(student.name).to eq("Sophocles")

    end

    it 'has a mod' do
        student = Student.new("Sophocles", 1)

        expect(student.mod).to eq("1")
    end

    it 'has skills' do
        student = Student.new("Sophocles", 1)

        expect(student.skills).to eq([])
    end

    it "can speak" do
        student = Student.new("Sophocles", 1)

        expect(student.say_mod).to eq("I'm in Mod 1")

    end

    it 'can learn new skills' do
        student = Student.new("Sophocles", 1)
        student.learn("testing")

        expect(student.skills).to eq (["testing"])
    end

    it 'can promote' do
        student = Student.new("Sophocles", 1)

        student.promote

        expect(student.say_mod).to eq("I'm in Mod 2")
        expect(student.mod).to eq("2")
    end


end