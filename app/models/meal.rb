class Meal < ApplicationRecord
  belongs_to :diet
  has_many :products, dependent: :destroy
  
  validates :title, presence: true
end
