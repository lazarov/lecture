module PageHelper
  def calendar(month, year, day)
    current_date = Date.new(year, month, @day)
    cal = current_date.strftime("%B")
    cal += link_to "Prev", "/page/calendar?month=#{month-1}&year=#{year}"
    cal += "<table border='1'>\n\t<tr>\n"
    days = %w(Sun Mon Tue Wed Thu Fri Sat)
    days.each do |day|
      cal += "\t<td>#{day}</td>\n"
    end
    # First week of the month
    cal += "<tr>"
    @day_of_week.times do |day|
    cal += "<td>&nbsp;</tdr>"
    end
    #Print calendar
    (7 - @day_of_week).times do |day|
    cal += "<td>#{day +1}</td>"
    end
    cal += "</tr>"
    cal += "\t</tr>\n</table>\n"
    cal += "Month: #{month}<br/>Year: #{year}<br/>"
    cal += "Date: #{current_date}<br/"
    return cal
  end
end
