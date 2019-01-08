class FamiliesController < ApplicationController
  def new
    @family = Family.new
  end

  def create
    @family = Family.new(family_params)
    @family.family_email = current_user.email

    if @family.save
      redirect_to new_family_path, success: "登録が完了しました"
    else
      redirect_to new_family_path, danger: "登録に失敗しました"
    end
  end

  def index
    @families = Family.all
  end

  def show
    @family = Family.find_by(params[:id])
  end

  private
  def family_params
    params.require(:family).permit(:family_name, :family_email)
  end

end
