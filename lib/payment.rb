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
end
