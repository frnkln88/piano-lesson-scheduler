class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :email, :password
end
