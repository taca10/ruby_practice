require 'mysql2'
client = Mysql2::Client.new(host: 'localhost', username: 'root', password: '', database: 'shop')


results = client.query("select * from Shohin")

p results.kind_of?(Hash)
p results.kind_of?(Array)


results.each do |row|
  # puts row # {"id"=>1, "dep"=>1, "name"=>"hoge"}
end
