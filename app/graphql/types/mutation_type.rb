module Types
  class MutationType < Types::BaseObject
    field :create_store, mutation: Mutations::CreateStore
    field :remove_store, mutation: Mutations::RemoveStore
    field :update_store, mutation: Mutations::UpdateStore

  end
end
