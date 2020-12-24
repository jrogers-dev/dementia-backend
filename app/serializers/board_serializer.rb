class BoardSerializer
  include JSONAPI::Serializer
  attributes :id, :clear, :rotation, :player_id
end
