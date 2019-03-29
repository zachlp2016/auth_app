require 'rails_helper'

RSpec.describe 'User registration process' do
  context 'when a user goes to the registration page' do
    it 'user adds new registration information to database' do

      visit new_user_path
      within '.div-registration'


      fill_in 'user[name]', with: 'Winston'
      fill_in 'user[email]', with: 'winston50@gmail'
      fill_in 'user[password]', with: 'unencrypted345'

      click_button("Create")

      visit sessions_new_path

      within '.login-div'


      fill_in 'session[email]', with: 'Winston'
      fill_in 'session[password]', with: 'winston50@gmail'

      expect(current_path).to eq(user_path(new_user))

    end


  end
end
