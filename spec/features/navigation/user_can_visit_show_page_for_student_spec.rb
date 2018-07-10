require 'rails_helper'

describe 'a user' do
  it 'can get to a student show page by clicking on their name' do
    student_1 = Student.create(name: "Bobby Hill")
    student_2 = Student.create(name: "Hank Hill")

    visit students_path
    click_on student_1.name

    expect(current_path).to eq(student_path(student_1))
    expect(page).to have_content(student_1.name)
    expect(page).to have_link("Edit Student ##{student_1.id}")
    expect(page).to have_link("Delete Student ##{student_1.id}")
  end
end
