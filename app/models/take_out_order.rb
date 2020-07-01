class TakeOutOrder < ApplicationRecord
  belongs_to :user
  belongs_to :menu_item
  belongs_to :menu
  belongs_to :restaurant_id
end
