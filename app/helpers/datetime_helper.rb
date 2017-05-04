# frozen_string_literal: true
module DatetimeHelper
  def human_date(datetime)
    content_tag :span, datetime.strftime('%F %H:%M'), class: 'moment-date'
  end

  def human_datetime(datetime)
    content_tag :span, datetime.strftime('%F %H:%M'), class: 'moment-datetime'
  end

  def human_time(datetime)
    content_tag :span, datetime.strftime('%H:%M'), class: 'moment-time'
  end
end
