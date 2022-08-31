class Diet < ApplicationRecord
	belongs_to :user
	has_many :meals, dependent: :destroy

	
	validates :title, presence: true
	validates :date, presence: true
	validate :not_past_date

	def not_past_date
		if date.nil? || date.past?
			errors.add(:date, "enter correct eate value!")
		end
	end
	
end
