class Product < ApplicationRecord
  belongs_to :meal

  validates :title, presence: true
end
