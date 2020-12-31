require 'date'

class DateConverter
  def self.modify_inputa_date(date)
    splited_date = date.split('/')
    Date.parse(splited_date[1] + '/' + splited_date[0]+ '/'+ splited_date[2])
  end
end