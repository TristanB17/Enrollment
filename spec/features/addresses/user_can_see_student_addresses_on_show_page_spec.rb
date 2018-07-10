require 'rails_helper'

describe 'user' do
  describe 'visits index page' do
    it 'can see addresses belonging to students' do
      student_1 = Student.create(name: "Buttercup")
      address_1 = Address.create(description: "Da Hood", street: "Da Streets", city: 'Townsville', state: 'Of Disenchantment', zip_code: 9999999, student_id: 1)
      address_2 = Address.create(description: "Paris", street: "Le Café", city: 'I said Paris', state: 'Of Awe', zip_code: 9999998, student_id: 1)

      visit student_path(student_1)

      expect(page).to have_content(address_1.description)
      expect(page).to have_content(address_1.street)
      expect(page).to have_content(address_1.city)
      expect(page).to have_content(address_1.state)
      expect(page).to have_content(address_1.zip_code)
      expect(page).to have_content(address_2.description)
      expect(page).to have_content(address_2.street)
      expect(page).to have_content(address_2.city)
      expect(page).to have_content(address_2.state)
      expect(page).to have_content(address_2.zip_code)
    end
  end
end
