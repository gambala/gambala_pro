# frozen_string_literal: true

module ApplicationHelper
  # fa_icon('user')
  # fa_icon('fab facebook')
  # fa_icon('facebook fab')
  def fa_icon(icon)
    classes = icon.split(' ')
    pack_class = nil
    %w(fas far fab fa).each { |prefix| pack_class ||= classes.delete(prefix) }
    pack_class ||= 'fa'
    icon_class = "fa-#{classes.delete_at(0)}"
    content_tag :i, nil, class: [pack_class, icon_class, *classes].join(' ')
  end

  def social_link_to(icon, href)
    link_to fa_icon(icon), href, target: '_blank', rel: 'noopener',
            class: 'grid__item button button_30px button_white'
  end
end
