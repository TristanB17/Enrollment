require 'rails_helper'

describe 'user' do
  it 'can return to index/create from show page' do
    student_1 = Student.create(name: "Bobby Hill")
    student_2 = Student.create(name: "Hank Hill")

    visit students_path
    click_on student_1.name

    expect(current_path).to eq(student_path(student_1))
    expect(page).to have_link("Return to Homepage")
  end
  it 'returns to index/create from edit page' do 
    student_1 = Student.create(name: "Bobby Hill")
    student_2 = Student.create(name: "Hank Hill")

    visit students_path
    click_on "Edit Student ##{student_1.id}"

    expect(current_path).to eq(edit_student_path(student_1))
    expect(page).to have_link("Return to Homepage")
    expect(page).to have_link("Create New Student")
  end
  it 'can visit create from index' do
    visit students_path

    expect(page).to have_link("Create New Student")
  end
  it 'can visit index page from create new' do
    visit new_student_path

    expect(page).to have_link("Return to Homepage")
  end
end
