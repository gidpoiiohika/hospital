# frozen_string_literal: true

class PatientAbility
  include CanCan::Ability

  def initialize(user)
    can :create, Appointment
    cannot :new, Appointment
    can :index, Category
    can :index, Recommendation
  end
end
