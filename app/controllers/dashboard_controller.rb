class DashboardController < ApplicationController
  before_action :authenticate_user!
  layout "dashboard"
      
  def index
  end

  def deposit
  end

  def withdraw
  end

  def transfer
  end

  def transaction
  end
end
