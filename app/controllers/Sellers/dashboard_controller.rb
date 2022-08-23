class Sellers::DashboardController < ApplicationController
  layout 'seller'
  before_action :authenticate_seller!
  def index
  end

  private 

  def authenticate_seller!
    authenticate_user!
    unless current_user.seller?
      flash[:alert] = 'The user type is invalid.'
      redirect_to :back
    end
    @seller = current_user 
  end 

end
