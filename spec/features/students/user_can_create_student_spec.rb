require 'rails_helper'

describe 'user' do
  describe 'visits a create student page' do
    it 'sees all appropriate fields' do
      visit new_student_path
      greeting = "Create new student"

      expect(page).to have_field(:student_name)
      expect(page).to have_content(greeting)
      expect(page).to have_button("Create Student")
    end
    it 'creates a student' do
      student_1 = Student.create(name: "Bobby Hill")

      visit new_student_path
      greeting = "Create new student"

      fill_in :student_name, with: student_1.name

      click_button "Create Student"

      expect(current_path).to eq("/students/#{student_1.id}")
      expect(page).to have_content(student_1.name)
    end
  end
end
