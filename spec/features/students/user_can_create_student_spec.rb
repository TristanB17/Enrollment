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
      name = "Bobby Hill"

      visit new_student_path
      greeting = "Create new student"

      fill_in :student_name, with: name

      click_button "Create Student"

      expect(current_path).to eq("/students/#{Student.all.first.id}")
      expect(page).to have_content(name)
    end
  end
end
