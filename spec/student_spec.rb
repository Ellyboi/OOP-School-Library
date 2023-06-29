require './student'
require './classroom'
require './decorator'
describe Student do
  context 'Testing class Student' do
    it 'should create a student class' do
      classroom = Classroom.new('A')
      student = Student.new(14, classroom, 'funmi')
      student.classroom = classroom
      expect(classroom.students[0].name).to eq('funmi')
      expect(student.play_hooky).to eq('¯\(ツ)/¯')
      expect(student.correct_name).to eq('funmi')
      capitalized_person = CapitalizeDecorator.new(student)
      expect(capitalized_person.correct_name).to eq('Funmi')
    end
  end
end
