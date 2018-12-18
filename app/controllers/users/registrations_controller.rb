class Users::RegistrationsController < Devise::RegistrationsController
  def cancel
    super
  end

  def create
    super
  end

  def new
    super
  end

  def edit
    super
  end

  def update
    super
  end

  def destroy
    super
  end

  protected
    def update_resource(resource, params)
      resource.update_without_current_password(params)
    end
end
