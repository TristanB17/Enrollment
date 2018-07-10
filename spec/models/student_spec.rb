require 'rails_helper'

describe Student, type: :model do
  describe 'validations' do
    it 'is invalid without all attributes' do
      student_1 = Student.create()

      expect(student_1).to_not be_valid
    end
    it 'is valid with all attributes' do
      student_1 = Student.create(name: "Bobby Hill")

      expect(student_1).to be_valid
    end
  end
  describe 'relationships' do
    it {should have_many(:addresses)}
  end
end
