module Types
  class QueryType < Types::BaseObject
    field :stores, [Types::StoreType], null: false
    
    def stores
      Store.all
    end

    field :store, Types::StoreType, null: false do
      argument :id, ID, required: true
    end

    def store(id:)
      Store.find(id)
    end


    field :books, [Types::BookType], null: false

    def books
      Book.all
    end

    field :book, Types::BookType, null: false do
      argument :id, ID, required: true
    end

    def book(id:)
      Book.find(id)
    end

  end
end
