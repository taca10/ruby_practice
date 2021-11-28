require 'csv'

class HolidayParser
  def parse_csv
    holiday_array_2016 = []
    holiday_name_2016 = []

    holiday_array_2017 = []
    holiday_name_2017 = []

    holiday_array_2018 = []
    holiday_name_2018 = []

    csv_path = File.expand_path('./syukujitsu.csv')
    transposed_csv = CSV.read(csv_path).transpose
    transposed_csv.each_with_index do |tc, i|
      tc.each do |t|
        if !t.nil? && t.match(/2016\//)
          holiday_array_2016 << t
        elsif !t.nil? && t.match(/2017\//)
          holiday_array_2017 << t
        elsif !t.nil? && t.match(/2018\//)
          holiday_array_2018 << t
        end

        if i == 0
          holiday_name_2016 << t
        elsif i == 2
          holiday_name_2017 << t
        elsif i == 4
          holiday_name_2018 << t
        end
      end

    end

    holiday_key_value_2016 = {'2016' => parse(holiday_array_2016, holiday_name_2016)}
    holiday_key_value_2017 = {'2017' => parse(holiday_array_2017, holiday_name_2017)}
    holiday_key_value_2018 ={'2018' => parse(holiday_array_2018, holiday_name_2018)}

    holiday_key_value = holiday_key_value_2016.merge(holiday_key_value_2017).merge(holiday_key_value_2018)
    p holiday_key_value

  end

  def parse(holiday_array, holiday_name_array)
    holiday_name_array.slice!(0..1)
    holiday_name_array.pop(2)
    holiday_array.map! {|h| Date.parse(h)}
    key_values = [holiday_array, holiday_name_array].transpose.to_h
  end

end

holiday_parser = HolidayParser.new
holiday_parser.parse_csv
