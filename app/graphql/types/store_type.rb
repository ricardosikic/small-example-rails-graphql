module Types
  class StoreType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :books, [Types::BookType], null: true
    #metodo
    field :books_count, Integer, null: true

    def books_count
      object.books.size
    end

  end
end
