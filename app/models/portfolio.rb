class Portfolio < ActiveRecord::Base
  has_many :investments
  def worth_at_cost
    worth=0
    investments.each do |investment|
      worth =worth+ investment.worth_at_cost
    end
    return worth
   end
  def worth_today
    worth=0
    investments.each do |investment|
      worth =worth+ investment.worth_today
    end
    return worth
  end
end
