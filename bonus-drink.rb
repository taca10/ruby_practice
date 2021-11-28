class BonusDrink

  def total_count_for(amount)
    given_number = amount
    bounus_drink_amount = 0
    while (amount >= 3) do
      tmp_amount = (amount / 3).floor
      bounus_drink_amount += tmp_amount
      tmp_surplus = (amount % 3).floor
      amount = tmp_amount + tmp_surplus
    end
    p bounus_drink_amount + given_number
  end

end

bounusDrink = BonusDrink.new
bounusDrink.total_count_for(11)
