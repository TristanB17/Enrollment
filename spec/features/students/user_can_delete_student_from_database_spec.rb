require 'rails_helper'

describe 'user' do
  describe 'visits the index page' do
    it 'deletes a student' do
      student_1 = Student.create(name: "Bobby Hill")
      student_2 = Student.create(name: "Hank Hill")

      visit students_path

      click_on "Delete Student ##{student_1.id}"

      expect(current_path).to eq(students_path)
      expect(page).to_not have_content(student_1.name)
    end
  end
end
