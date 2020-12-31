require_relative '../lib/payment.rb'


amount = 10000
interest = 10
terms = 12
years = terms.to_f/12
pmt = Payment.total_pmt(amount, interest, years, terms)
puts pmt