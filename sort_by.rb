class Array
  def sort_by
    self.map {|i| p i  }.sort {|a, b| a[0] <=> b[0] }.map {|i| p i[1]}
  end
end

# [["bar", "BAR"], ["bar", "bar"], ["foo", "FOO"], ["foo", "foo"]].each do |s|
#   p s[1]
#   # p a[0]
#   # p b[0]
#   # a.to_i <=> b.to_i
# end

["BAR", "FOO", "bar", "foo"].sort {|a, b| a.downcase <=> b.downcase }

foo = ["BAR", "FOO", "bar", "foo"].sort_by {|v| v.downcase }
# p foo
