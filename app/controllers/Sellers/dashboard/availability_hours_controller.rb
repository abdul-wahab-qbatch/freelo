class Sellers::Dashboard::AvailabilityHoursController <Sellers::DashboardController
  def new
    @availability_hour = AvailabilityHour.new
  end

  def index
    @availability_hours = @seller.availability_hours
  end

  def create 
    if @seller.availability_hours.create(availability_hour_params)
      redirect_to sellers_dashboard_availability_hours_path
    else 
      render :new, status: :unprocessable_entity
    end
  end

  private

  def availability_hour_params
    params.require(:availability_hour).permit(:day, :start_time, :end_time)
  end

   
end