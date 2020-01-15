class Mutations::CreateStore < Mutations::BaseMutation
    argument :name, String, required: true

    field :name, String, null: true
    field :errors, [String], null: false

    def resolve(name:)
        store = Store.new(name: name)
        if store.save
            {
                store: store,
                errors: []
            }
        else
            {
                store: nil,
                errors: store.errors.full_messages
            }
        end
    end
end