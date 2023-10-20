class Ability
  include CanCan::Ability


  def initializer(user)
    if user.admin?
      can :manage, :all
    elsif user.manager?
      can :manage, Department
      can :read, Employee
    elsif user.employee?
      can :read, Department
      can :read, Employee
    end
  end
end

