class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def shop?
      true
    end
  end
end
