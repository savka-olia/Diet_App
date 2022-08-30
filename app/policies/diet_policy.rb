class DietPolicy < ApplicationPolicy
	def index?
		user.present?
	end

	def create?
		user.present?
	end

	def update?
		return true if user.present? && user == diet.user
	end

	def destroy?
		return true if user.present? && user == diet.user
	end

	private

	def diet
		record
	end
end