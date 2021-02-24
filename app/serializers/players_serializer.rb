class PlayersSerializer
  include JSONAPI::Serializer
  attributes :first_name, :last_name, :height, :weight, :birthday, :graduation_year, :position, :recruit
end
