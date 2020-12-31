require 'date'

class DateConverter
  def self.modify_inputa_date(date)
    splited_date = date.split('/')
    Date.parse(splited_date[1] + '/' + splited_date[0]+ '/'+ splited_date[2])
  end

  def self.preffered_date_format(date)
    splited_date = date.strftime("%F").split('-')
    splited_date[1] + '/' + splited_date[2]+ '/'+ splited_date[0]
  end
end
