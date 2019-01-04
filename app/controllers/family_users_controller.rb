class FamilyUsersController < ApplicationController
  def new
    @family_user = FamilyUser.new
  end

  def index
    @family_users = FamilyUser.all
  end

  def show
    @family_user = FamilyUser.find_by(params[:id])
  end
end
