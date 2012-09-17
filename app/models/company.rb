class Company < ActiveRecord::Base
  has_many :investments
  validate :symbol_length_should_be_less
  def symbol_length_should_be_less
    if symbol.length <3 or symbol.length>4
      errors.add :symbol,'should be either 3 or 4 lettered'
    end
  end
  validate :should_be_positive
  def should_be_positive
    if price <0
      errors.add :price,'Should Be Positive'
    end
    end
end
