# frozen_string_literal: true

module NavigationHelper
  def menu_link_to(*args, exact_route_match: false, &block)
    # because of link_to behavior
    route = block_given? ? args[0] : args[1]

    li_class = route_matching_class(route, exact_route_match)

    content_tag :li, link_to(*args, &block), class: li_class
  end

  private

  def route_matching_class(route, exact_route_match)
    'active' if route_matches?(route, exact_route_match)
  end

  def route_matches?(route, exact_route_match)
    if exact_route_match
      request.path == url_for(route)
    else
      request.path.include? url_for(route)
    end
  end
end
