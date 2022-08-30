class Diet < ApplicationRecord
	belongs_to :user
	has_many :meals, dependent: :destroy

	validates :title, presence: true
	validate :not_past_date

	def not_past_date
		if date.past?
			errors.add(:date, "not in past")
		end
	end
	
end
