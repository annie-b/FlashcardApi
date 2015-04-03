class UserSerializer < ActiveModel::UserSerializer
  attributes :id, :name, :username, :email, :token
end
