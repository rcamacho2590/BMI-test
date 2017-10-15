module Bmi
  # Body mass index service
  class Create
    def initialize(height, weight)
      @height = height.to_f
      @weight = weight.to_f
    end

    def result
      @bmi = calculate_index
      [@bmi, condition(@bmi)]
    end

    def calculate_index
      (@weight / (@height**2)).round(2)
    end

    private

      def condition(bmi)
        case bmi
        when 0..15
          'Very severely underweight'
        when 15..16
          'Severely underweight'
        when 16..18.5
          'Underweight'
        when 18.5..25
          'Normal (healthy weight)'
        when 25..30
          'Overweight'
        when 30..35
          'Obese Class I (Moderately obese)'
        when 35..40
          'Obese Class II (Severely obese)'
        else
          'Obese Class III (Very severely obese)'
        end
      end
  end
end
