class UsersController < ApplicationController

  def activate_user
    user = User.find(params[:id])
    if user.activate_user
      flash[:notice] = 'User activated successfully.'
    else
      flash[:alert] = 'User activation failed.'
    end
    redirect_to admin_dashboard_path
  end

end
