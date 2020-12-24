class PositionSerializer
  include JSONAPI::Serializer
  attributes :id, :board_id
end
