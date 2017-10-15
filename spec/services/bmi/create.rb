require 'rails_helper'

RSpec.describe Bmi::Create do
  describe '#calculate' do

    context "with a successfull response" do
      it 'returns Very severely underweight'do
        expect(Bmi::Create.new(1.77, 44).result).to eql([14.04, "Very severely underweight"])
      end

      it 'returns Underweight'do
        expect(Bmi::Create.new(1.77, 55).result).to eql([17.56, "Underweight"])
      end

      it 'returns Healthy weight'do
        expect(Bmi::Create.new(1.77, 70).result).to eql([22.34, "Normal (healthy weight)"])
      end

      it 'returns Overweight'do
        expect(Bmi::Create.new(1.77, 85).result).to eql([27.13, "Overweight"])
      end

      it 'returns Moderately obese'do
        expect(Bmi::Create.new(1.65, 85).result).to eql([31.22, "Obese Class I (Moderately obese)"])
      end

      it 'returns Severely obese'do
        expect(Bmi::Create.new(1.50, 85).result).to eql([37.78, "Obese Class II (Severely obese)"])
      end
    end
  end
end
