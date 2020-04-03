class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :email, :notes
    
    has_many :notes, include_nested_associations: true
end
