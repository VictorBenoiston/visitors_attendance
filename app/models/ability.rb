# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    if user.administrador?
      can :manage, :all
    elsif user.atendente? 
      can :read, :all
      can :create, Visitante
    elsif
      can :read, :all

    end
  end
end
