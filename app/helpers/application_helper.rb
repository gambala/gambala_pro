# frozen_string_literal: true

module ApplicationHelper
  def fa_icon(icon)
    content_tag :i, nil, class: "fa fa-#{icon}"
  end

  def fas_icon(icon)
    content_tag :i, nil, class: "fas fa-#{icon}"
  end
end
