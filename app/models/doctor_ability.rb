class DoctorAbility
  include CanCan::Ability

  def initialize(user)
    can :index, Appointment
    can :create, Recommendation
  end
end
