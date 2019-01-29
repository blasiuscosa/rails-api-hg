class Restaurants < ApplicationRecord
  belongs_to :dishes

  validates_presence_of :name
end
