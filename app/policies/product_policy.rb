class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def shop?
    true
  end

  def show?
    true
  end
end
