class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can :read, :all
      can :manage, User, id: user.id
      can [:index, :show, :search], Product
      cannot [:create], Product
    end
  end

end
