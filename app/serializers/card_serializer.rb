class CardSerializer
  include JSONAPI::Serializer
  attributes :value, :position_id
end
