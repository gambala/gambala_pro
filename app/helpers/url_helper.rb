# frozen_string_literal: true
module UrlHelper
  def external_url(url)
    return url if url.match?(%r{^https://})
    return url if url.match?(%r{^http://})
    return url if url.match?(%r{^//})
    "//#{url}"
  end
end
