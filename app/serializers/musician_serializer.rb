class MusicianSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email, :instruments
end
