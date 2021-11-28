class KaraokeMachine
  def initialize(melody)
    @tones = %w(C C# D D# E F F# G G# A A# B)
    @melody = []
    melody.chars {|m|
      if (m == "#")
        @melody[-1] += "#"
      end
      @melody.push(m)
    }
  end

  def transpose(amount)
    melody_after_conversion = []

    @melody.each do |m|
      @tones.each_with_index do |tone, i|
        if (m == tone)
          number = (i+amount) % @tones.length
          melody_after_conversion << @tones[number]
        end
      end
      if (m == "|")
          melody_after_conversion << "|"
      elsif (m == " ")
        melody_after_conversion << " "
      end
    end

    p melody_after_conversion.join('')

  end
end

melody = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   "
karaokemachine = KaraokeMachine.new(melody)
karaokemachine.transpose(-4)
