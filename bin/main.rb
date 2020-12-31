require "highline/import"

require_relative '../lib/payment.rb'

def get_user_input
  amount = ask "Loan Amount: "
  terms = ask "Term (in months): "
  interest = ask "Annual Interest Rate (%): "
  request_date = ask "Disbursment Date(MM/DD/YYYY): "
end

get_user_input()