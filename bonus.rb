class Person
  attr_reader :name, :grade

  def initialize(name:, grade:)
    @name, @grade = name, grade
  end
end

class Bonus
  attr_reader :person, :review

  def initialize(person, review:)
    @person, @review = person, review
  end

  def call
    case (g = @person.grade)
    when :S
      base = 160
      apply_review(base)
    when :A
      base = 120
      apply_review(base)
    when :B
      base = 100
      apply_review(base)
    else
      raise "No such grade: '#{g}'"
    end
  end

  private
  def apply_review(base)
    case @review
    when :excellent
      base + 50
    when :standard
      base
    when :poor
      base * 0.8
    else
      raise "No such review: '#{g}'"
    end
  end

end

takato = Person.new(name: 'takato', grade: :B)

b = Bonus.new(takato, review: :standard)
p b.call
