class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :editable

  def editable
    scope == object.user
  end
end
