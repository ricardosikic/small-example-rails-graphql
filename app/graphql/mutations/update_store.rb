class Mutations::UpdateStore < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :name, String, required: true

    type Types::StoreType

    def resolve(id:, **attributes)
        store = Store.find(id)
        if store
            store.update(**attributes)
        end
    end
end