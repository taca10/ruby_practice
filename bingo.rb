class Bingo
  def self.generate_card
    card = <<-CARD
 B |  I |  N |  G |  O
13 | 22 | 32 | 48 | 61
 3 | 23 | 43 | 53 | 63
 4 | 19 |    | 60 | 65
12 | 16 | 44 | 50 | 75
 2 | 28 | 33 | 56 | 68
    CARD
    b_column = (0..15).to_a.shuffle.take(5)
    i_column = (16..30).to_a.shuffle.take(5)
    n_column = (31..45).to_a.shuffle.take(5)
    n_column.insert(2, " ").delete_at(3)
    g_column = (46..60).to_a.shuffle.take(5)
    o_column = (61..75).to_a.shuffle.take(5)
    card_column = [b_column, i_column, n_column, g_column, o_column]
    rows = card.split("\n")
    table = rows.map { |s| s.split(' | ') }
    numbers_by_col = table[1..-1].map { |cols| cols.map(&:to_s) }.transpose
    tmp_table = numbers_by_col.each_with_index do |t, i|
      t.clear
      p t
      t.push(card_column[i])
      t.flatten!
    end
    tmp_table.transpose.map { |array_table| array_table.map {|table_number| table_number.to_s.rjust(2) }.join(" | ")}
  end
end


# class Bingo
#   def self.generate_card
#     cols = %w(B I N G O).each_with_index.map do |key, i|
#       p [*(i * 15 + 1)..(i * 15 + 15)]
#       [key] + [*(i * 15 + 1)..(i * 15 + 15)].sample(5)
#     end
#     cols
#     cols[2][3] = " "
#     cols.transpose.map do |row|
#       row.map { |cell| cell.to_s.rjust(2) }.join(" | ")
#     end.join("\n")
#   end
# end

# puts Bingo.generate_card
