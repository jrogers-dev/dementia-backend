class BoardSerializer
  include JSONAPI::Serializer
  attributes :clear, :rotation, :player_id
end
