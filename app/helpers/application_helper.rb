# frozen_string_literal: true

module ApplicationHelper
  def viewport_tag
    params = %w(width=device-width
                initial-scale=1
                minimum-scale=1
                maximum-scale=1
                user-scalable=0)
    content_tag :meta, nil, name: 'viewport', content: params.join(', ')
  end
end
