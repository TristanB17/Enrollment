require 'rails_helper'

describe 'user' do
  describe 'visiting the student show page' do
    it 'can add an address to a student' do
      description = "Neat"
      street = "MUH"
      city = 'My BFF Jill'
      state = 'Donde esta la playa?'
      zip_code = 9990909
      student_1 = Student.create(name: "Buttercup")

      visit new_student_address_path

      fill_in :address_description, with: description
      fill_in :address_street, with: street
      fill_in :address_city, with: city
      fill_in :address_state, with: state
      fill_in :address_zip_code, with: zip_code
      click_button 'Create New Address'

      expect(current_path).to eq(student_path(student_1))
      expect(page).to have_content(description)
      expect(page).to have_content(street)
      expect(page).to have_content(city)
      expect(page).to have_content(state)
      expect(page).to have_content(zip_code)
    end
  end
end
