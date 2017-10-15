# BMI Calculations Controller
class CalculationsController < ApplicationController
  def calculate
    @result = Bmi::Create.new(user_params[:height], user_params[:weight]).result
  end

  def new; end

  private

    def user_params
      params.require(:user).permit(:height,
                                   :weight)
    end
end
