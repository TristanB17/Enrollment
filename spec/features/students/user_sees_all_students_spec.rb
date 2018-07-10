require 'rails_helper'

describe "User" do
  describe "visits student index" do
    it 'sees all students' do
      student_1 = Student.create(name: "Bobby Hill")

      visit students_path

      expect(page).to have_content(student_1.name)
    end
  end
end
