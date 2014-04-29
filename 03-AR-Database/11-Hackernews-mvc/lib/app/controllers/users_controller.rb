require_relative '../models/user'

class UsersController

  def create(name, email)
    User.create({name: name, email: email})
  end

  def login(name, email)
    User.find_by(name: name, email: email) || false
  end
end