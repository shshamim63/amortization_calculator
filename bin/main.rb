require "highline/import"

require_relative '../lib/payment.rb'
require_relative '../lib/date_utility'

def output(result)
  puts "Date                  Start Balance        Principal      Interest      Total pmt   End Balance"
  result.each do |payment|
    puts "#{DateConverter.preffered_date_format(payment.start_date)}            #{'%.2f' % payment.start_balance}             #{'%.2f' % payment.principal}         #{'%.2f' % payment.interest}         #{'%.2f' % payment.pmt}         #{'%.2f' % payment.end_balance}"
  end  
end

def start(amount, interest, terms, date)
  years = terms.to_f/12
  request_date = DateConverter.modify_inputa_date(date)
  pmt = Payment.total_pmt(amount, interest, years, terms)

  ans = []
  (0...terms).each do |term|
    if term == 0
      payment = Payment.new(amount, interest, terms, pmt,
                              request_date.next_month
                            ) 
      ans.push(payment)
    else
      payment = Payment.new(ans[term-1].end_balance, interest, terms, pmt,
                          ans[term-1].start_date.next_month
                          )
      ans.push(payment)
    end
  end
  ans
end

def get_user_input
  amount = ask "Loan Amount: "
  terms = ask "Term (in months): "
  interest = ask "Annual Interest Rate (%): "
  request_date = ask "Disbursment Date(MM/DD/YYYY): "
  generated_table = start(amount.to_f, interest.to_f, terms.to_i, request_date.to_s)
end

get_user_input()
