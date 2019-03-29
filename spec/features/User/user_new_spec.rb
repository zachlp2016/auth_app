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

      new_user = User.last

      expect(current_path).to eq(user_path(new_user))
      expect(new_user.name).to eq('Winston')
      expect(new_user.email).to eq('winston50@gmail')
      expect(new_user.password).to eq('unencrypted345')
    end


  end
end
