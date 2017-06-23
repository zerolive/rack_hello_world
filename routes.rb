class Routes
  CONTENT = {}
  NOT_FOUND = 404
  OK = 200

  def initialize(responses)
    @responses = responses
  end

  def respont_to(route)
    return not_found unless template_for(route)

    [OK, CONTENT, [template_for(route).render]]
  end

  private
  
  def not_found
    [NOT_FOUND, CONTENT, []]
  end

  def template_for(route)
    @responses[route]
  end
end
