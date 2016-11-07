module SafeSeoHelper
  def safe_seo_link_to(*args, &block)
    # because of link_to behavior
    route, params = block_given? ? args[0..1] : args[1..2]

    return link_to(*args, &block) if params[:method].present?
    return link_to(*args, &block) unless route_matches?(route)

    if block_given?
      args[0] = 'javascript:;'
    else
      args[1] = 'javascript:;'
    end
    link_to(*args, &block)
  end

  private

  def route_matches?(route)
    url_for(route) == request.fullpath
  end
end
