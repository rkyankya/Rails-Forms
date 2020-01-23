class DriversController < ApplicationController
  def index
    @driver = Driver.all
  end

  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.create(driver_params)
  end

  def edit
  end

  def show
  end

  def destroy
    @driver.destroy(params[:id])
  end

  private
  def set_driver
    @driver = Driver.find(params[:id])
  end

  def driver_params
    params.require(:driver).permit(:name, :address)
  end
end
