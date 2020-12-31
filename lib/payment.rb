class Payment

  attr_reader :payment, :end_balance, :start_date,:end_balance,
              :pmt, :start_balance, :principal, :interest

  def initialize(start_balance, annual_interest_rate, terms, pmt, start_date)
    @start_balance = start_balance.round(2)
    @annual_interest_rate = annual_interest_rate
    @terms = terms
    @start_date = start_date
    @pmt = pmt
    @interest = Payment.interest_monthly(start_balance, annual_interest_rate, terms).round(2)
    @principal = (pmt - interest).round(2)
    @end_balance = (start_balance - principal).round(2) > 0 ? (start_balance - principal).round(2) : 0
  end

  def self.total_pmt(start_balance, annual_interest_rate, years, terms)
    monthly_interest = monthly_rate(annual_interest_rate, terms)
    modified_interest_amount = (1 + monthly_interest) ** terms
    change = change_of_rate(modified_interest_amount)
    (start_balance *(monthly_interest * modified_interest_amount)) / change
  end

  def self.interest_monthly(current_start_balance, annual_interest_rate, terms)
    (current_start_balance*(annual_interest_rate/(terms*100).to_f))
  end

  def self.monthly_rate(annual_interest_rate, terms)
    annual_interest_rate/(terms*100).to_f
  end

  def self.change_of_rate(monthly_interest_amount)
    monthly_interest_amount - 1
  end
end