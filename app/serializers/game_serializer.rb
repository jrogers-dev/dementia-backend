class GameSerializer
  include JSONAPI::Serializer
  attributes :id, :state
end
