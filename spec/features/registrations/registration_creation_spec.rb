require 'rails_helper'

describe 'user creation page' do
  describe 'happy path' do
    it 'creates a user' do

      visit 'signup'

      expect(page).to have_field('First name')
      expect(page).to have_field('Last name')
      expect(page).to have_field('Phone number')
      expect(page).to have_field('Email')
      expect(page).to have_field('Street address')
      expect(page).to have_field('State')
      expect(page).to have_field('City')
      expect(page).to have_field('Zip')

      fill_in 'First name', with: 'Robert'
      fill_in 'Last name', with: 'Heath'
      fill_in 'Password', with: '1c1c1c'
      fill_in 'Password confirmation', with: '1c1c1c'
      fill_in 'Phone number', with: '3049054977'
      fill_in 'Email', with: 'robert.b.heathii@gmail.com'
      fill_in 'Street address', with: '674 Locust Hill Rd.'
      fill_in 'City', with: 'Chester'
      fill_in 'State', with: 'WV'
      fill_in 'Zip', with: '26034'

      click_button 'Sign Up'

      expect(User.last.first_name).to eq('Robert')
      # expect(current_path).to eq(user_dashboard)
    end
  end
end
