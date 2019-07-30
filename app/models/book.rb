class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category
  belongs_to :publishhouse
  scope :book_order, ->{order created_at: :desc}
end
