class NoteSerializer < ActiveModel::Serializer
  attributes :id, :content, :position, :user_id
end
