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
  end
end
