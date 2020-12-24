class CardSerializer
  include JSONAPI::Serializer
  attributes :id, :value, :position_id
end
