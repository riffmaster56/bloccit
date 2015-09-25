require 'rails_helper'

describe Vote do
  describe "validations" do
    describe "value validation" do
      it "allows 1 and -1 only" do
        expect(Vote.new(value: 1).valid?).to eq(true)
        expect(Vote.new(value: -1).valid?).to eq(true)
        expect(Vote.new(value: 0).valid?).to eq(false)
      end
    end
  end
end
