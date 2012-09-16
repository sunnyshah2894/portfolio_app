class Investment < ActiveRecord::Base
validate :should_be_positive
  def should_be_positive
    if quantity <0
      errors.add :quantity,'Should Be Positive'
    end
    if cost<0
      errors.add :cost,'Should Be Positive'
    end
  end
end
