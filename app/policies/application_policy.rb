class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    owner? || admin?
  end

  def show?
    owner? || admin?
  end

  def create?
    owner? || admin?
  end

  def new?
    owner? || admin?
  end

  def update?
    owner? || admin?
  end

  def edit?
    owner? || admin?
  end

  def destroy?
    owner? || admin?
  end

  def owner?
    user == record.user
  end

  def admin?
    user.admin?
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
