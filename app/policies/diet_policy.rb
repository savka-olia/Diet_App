class DietPolicy < ApplicationPolicy
	class Scope < Scope
		def resolve
			scope.where(user: user)
		end
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