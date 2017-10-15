class Bmi::Create
  def initialize(height, weight)
    @height = height.to_f
    @weight = weight.to_f
  end

  def result
    @bmi = calculate_index
    return [@bmi, check_condition(@bmi)]
  end

  def calculate_index
    (@weight / (@height**2)).round(2)
  end

  private
    def check_condition(bmi)
      case bmi
      when 0..15
        return "Very severely underweight"
      when 15..16
        return "Severely underweight"
      when 16..18.5
        return "Underweight"
      when 18.5..25
        return "Normal (healthy weight)"
      when 25..30
        return "Overweight"
      when 30..35
        return "Obese Class I (Moderately obese)"
      when 35..40
        return "Obese Class II (Severely obese)"
      else
        return "Obese Class III (Very severely obese)"
      end
    end
end
