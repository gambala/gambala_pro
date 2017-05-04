# frozen_string_literal: true
module UrlHelper
  def external_url(url)
    return url if url =~ %r{^https://}
    return url if url =~ %r{^http://}
    return url if url =~ %r{^//}
    "//#{url}"
  end
end
