class Sellers::Dashboard::AvailabilityHoursController <Sellers::DashboardController
  before_action :set_availability_hour, only: [:edit, :show, :destroy, :update]
  def new
    @availability_hour = AvailabilityHour.new
  end

  def index
    @availability_hours = @seller.availability_hours.order(:day)
  end

  def create 
    if @seller.availability_hours.create(availability_hour_params)
      redirect_to sellers_dashboard_availability_hours_path
    else 
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
  end

  def update
    if @availability_hour.update(availability_hour_params)
      redirect_to sellers_dashboard_availability_hours_path
    else
      render :edit
    end
  end

  def destroy
    @availability_hour.destroy
    redirect_to sellers_dashboard_availability_hours_path, status: :success
  end



  private

  def availability_hour_params
    params.require(:availability_hour).permit(:day, :start_time, :end_time)
  end

  def set_availability_hour
    @availability_hour = AvailabilityHour.find(params[:id])
  end

   
end