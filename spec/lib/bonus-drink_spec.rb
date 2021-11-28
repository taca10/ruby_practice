require "spec_helper"
require "./bonus-drink"

describe BonusDrink do
  bounusDrink = BonusDrink.new
  specify { expect(bounusDrink.total_count_for(0)).to eq 0 }

  it "1" do
    expect(bounusDrink.total_count_for(1)).to eq 1
  end

  it "2" do
    expect(bounusDrink.total_count_for(2)).to eq 2
  end

  it "3" do
    expect(bounusDrink.total_count_for(3)).to eq 4
  end

  it "4" do
    expect(bounusDrink.total_count_for(4)).to eq 5
  end

  it "5" do
    expect(bounusDrink.total_count_for(5)).to eq 7
  end

   it "11" do
    expect(bounusDrink.total_count_for(11)).to eq 16
  end
end
