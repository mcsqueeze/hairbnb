class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def bigwig?
    user.usertype == "bigwig"
  end
end
