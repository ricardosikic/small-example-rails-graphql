class Mutations::RemoveStore < Mutations::BaseMutation
    argument :id, ID, required: true
    
    field :name, String, null: true
    
    def resolve(id:)
        store = Store.find(id)
        return Errors unless store

        store.destroy
    end
end