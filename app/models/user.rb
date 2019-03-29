class User < ApplicationRecord


  def self.authenticate(email, password)
    self.all.each do |user|
      if user.email == email && user.password == password
        return user
      else
        nil
      end
    end
  end
    # if email and password correspond to a valid user, return that user
    # otherwise, return nil
end
