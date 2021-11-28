garake_number_converter = {
  '1' =>['.', ',', '!','?'],
  '2' =>['A', 'B', 'C'],
  '3' => ['D','E','F'],
  '4' => ['G','H','I'],
  '5' => ['J','K','L'],
  '6' => ['M','N','O'],
  '7' => ['P','Q','R','I'],
  '8' => ['T','U','V'],
  '9' => ['W','X','Y','Z']
}

input = "44033055505550666011011111090666077705550301110"
input_array = input.split('0')

output_array = input_array.map{|i| garake_number_converter[i.chr][i.length - 1] }
p output_array.join('')


