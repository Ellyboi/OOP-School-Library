require './classroom'
require './student'

describe Classroom do
  context 'Testing class Classroom' do
    it 'should create a classroom class' do
      classroom = Classroom.new('A')
      student = Student.new(14, classroom, 'Funmi')
      classroom.add_student(student)
      expect(classroom.students[0].name).to eq('Funmi')
    end
  end
end
