class Investment < ActiveRecord::Base
  belongs_to :portfolio
  belongs_to :company
validate :should_be_positive
  def should_be_positive
    if quantity <0
      errors.add :quantity,'Should Be Positive'
    end
    if cost<0
      errors.add :cost,'Should Be Positive'
    end
  end
  def worth_at_cost
    quantity*cost
  end
  def worth_today
    quantity*prize
  end
end
