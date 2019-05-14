class Book < ApplicationRecord
  belongs_to :user
  validates :title, :author, :user, presence: true
end
