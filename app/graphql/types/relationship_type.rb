module Types
  class RelationshipType < Types::BaseObject
    field :followers, [Types::UserType], null: true
    field :followed, [Types::UserType], null: true
  end
end
