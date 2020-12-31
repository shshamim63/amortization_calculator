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

  def self.change_of_rate(annual_interest_rate, terms, year)
    1-(1/(1+(annual_interest_rate/(terms*100).to_f)) ** ((terms*year)))
  end

  def self.interest_monthly(current_start_balance, annual_interest_rate, terms)
    (current_start_balance*(annual_interest_rate/(terms*100).to_f))
  end

  def self.total_pmt(start_balance, annual_interest_rate, years, terms)
    monthly_interest = interest_monthly(start_balance, annual_interest_rate, terms)
    change = change_of_rate(annual_interest_rate,terms, years)
    (monthly_interest/change).round(2)
  end
end
