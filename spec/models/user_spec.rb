require 'rails_helper'

describe User, type: :model do
  

  describe 'class-methods' do
    before :each do
      @user_1 = User.create(name: "Henry8th", email: "henry@gmail", password: "exit2462346")
      @user_2 = User.create(name: "Logmeinow", email: "Logme@gmail", password: "exit2462346")
      @user_3 = User.create(name: "Sanantonio", email: "Sanantonia@gmail", password: "exit2462346")
      @user_4 = User.create(name: "Sanfrancis", email: "Sanfrancis", password: "exit2462346")
    end

    it 'authenticates users' do
    actual = User.authenticate(@user_1.email, @user_1.password)
    expected = @user_1

    expect(actual).to eq(expected)
    end
  end
end
