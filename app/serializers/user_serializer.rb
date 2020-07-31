class UserSerializer < ActiveModel::Serializer
    attributes :name, :age, :location, :image_url, :bio
end
