class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user || record.creature.user == user
  end

  def destroy?
    record.user == user || record.creature.user == user
  end

  def my_bookings?
    true
  end
end
