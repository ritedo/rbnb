class ReservationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    return true
  end

  def accept?
    is_user_the_owner_or_admin?
  end

  def decline?
    is_user_the_owner_or_admin?
  end

  private

  def is_user_the_owner_or_admin?
    user == record.bike.user
     # || user.admin?
  end
end
