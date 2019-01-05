class FamilyUsersController < ApplicationController
  def new
    @family_user = FamilyUser.new
  end

  def create
    family = Family.find_by(family_email: params[:family_email])

    if family == nil
      flash.now[:danger] = "登録に失敗しました（familyが見つかりません）"
      render :new
    else
      @family_user = FamilyUser.new
      @family_user.family_id = family.id
      @family_user.user_id = current_user.id
      @family_user.family_approved = 1
      @family_user.family_administrator = 1

      if @family_user.save
        redirect_to root_path, success: '登録が完了しました' #Rails04 redirect_toを参照
      else
        flash.now[:danger] = "登録に失敗しました"
        render :new
      end
    end
  end

  def index
    @family_users = FamilyUser.all
  end

  def show
    @family_user = FamilyUser.find_by(params[:id])
  end

end
