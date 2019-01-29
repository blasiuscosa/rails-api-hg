class Dishes < ApplicationRecord
  belongs_to :restaurants

  validates_presence_of :name
end
