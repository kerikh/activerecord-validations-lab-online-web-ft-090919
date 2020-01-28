class ClickbaitValidator < ActiveModel::Validator
  def validate(record)
    unless ["Won't Believe", "Secret", "Top [number]", "Guess"].any? { |phrase| record.title.to_s.include?(phrase)}
      record.errors[:title] << "This title is not clickbaity!"
    end
  end
end
