class ExtractWord
  def extract_word
   english_text = File.read('input.txt')
   count_words(english_text)
  end

  def count_words(text)
    array = []

    text = text.gsub(/[,\.\”\“–\n]/, '')
    texts = text.split(" ")
    word_char = /[A-Za-z]/

    texts.each do |text|
      if text.match(word_char)
        array << text
      end
    end
    p array.sort {|a,b| array.count(b) - array.count(a) }
  end

end

# ExtractWord.new.extract_word


# array = [{'the' => 32}, {of: 30}, {hoge: 27}]

# array.each_with_index do |values, i|
#   values.each do |key, value|
#     p " . value"
#   end
# end
