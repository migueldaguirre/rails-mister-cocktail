class DosesController < ApplicationController

  def new
    @dose = Dose.new
  end

  def create
    @dose = dose.new(dose_params) #private method
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient)
  end

end
