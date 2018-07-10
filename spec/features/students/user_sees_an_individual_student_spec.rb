require 'rails_helper'

describe 'user' do
  describe 'visits individual student page' do
    it 'sees students information' do
      student_1 = Student.create(name: "Bobby Hill")

      visit student_path(student_1)

      expect(page).to have_content(student_1.name)
    end
  end
end
