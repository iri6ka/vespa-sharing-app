# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
       user ||= User.new # guest user (not logged in)
       can [:read, :create], Listing
       can [:update, :destroy], Listing, user_id: user.id # if the user created the Listing, that person ccan update and destroy Listing after creating it
       can :update, :all if user.edit_master? # user gets a possibility to update a listing even if it hasn't created it if the user has an edit_master role
       can :manage, :all if user.super? # user has full CRUD possibilites if user's role is 'super'
  end
end
