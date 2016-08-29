module DatetimeHelper
  def human_date(datetime)
    content_tag :span, datetime.strftime('%F %I:%M'), class: 'moment-date'
  end

  def human_datetime(datetime)
    content_tag :span, datetime.strftime('%F %I:%M'), class: 'moment-datetime'
  end

  def human_time(datetime)
    content_tag :span, datetime.strftime('%I:%M'), class: 'moment-time'
  end
end
