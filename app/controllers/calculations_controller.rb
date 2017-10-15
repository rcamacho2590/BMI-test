class CalculationsController < ApplicationController

  def calculate
    @bmi_result = Bmi::Create.new(bmi_params[:height], bmi_params[:weight]).result
  end

  def new; end

  private
    def bmi_params
      params.require(:user).permit(:height,
                                   :weight)
    end
end
