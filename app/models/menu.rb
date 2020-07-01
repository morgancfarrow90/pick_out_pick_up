class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :menu_items
  validates :category, :details, presence: true
end
