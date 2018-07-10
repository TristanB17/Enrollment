require 'rails_helper'

describe 'user' do
  describe 'visits edit student page' do
    it 'edits a student' do
      old_name = "Bobby Hill"
      new_name = "Bart Simpson"
      student_1 = Student.create(name: "Bobby Hill")

      visit edit_student_path(student_1)

      fill_in :student_name, with: new_name
      click_button 'Update Student'

      expect(current_path).to eq(student_path(student_1))
      expect(page).to have_content(new_name)
      expect(page).to_not have_content(old_name)
    end
  end
end
