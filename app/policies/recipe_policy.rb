class RecipePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def index?
      true
    end

    def create?
      true
    end

    def update?
    end

    def show?
    end

    def destroy?
    end
  end
end
