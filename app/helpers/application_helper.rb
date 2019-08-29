# frozen_string_literal: true

module ApplicationHelper
  def fa_icon(icon)
    content_tag :i, nil, class: "fa fa-#{icon}"
  end

  def fas_icon(icon)
    content_tag :i, nil, class: "fas fa-#{icon}"
  end

  def social_link_to(icon, href)
    link_to fa_icon(icon), href, target: '_blank', rel: 'noopener',
            class: 'grid__item button button_30px button_white'
  end
end
