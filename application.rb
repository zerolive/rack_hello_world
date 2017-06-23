require_relative 'controller'
require_relative 'routes'

class Application
  def call(env)
    path = env['PATH_INFO']
    routes = Routes.new({
      '/' => Controller.new('views/index.html.erb').action
    })
    routes.respont_to(path)
  end
end
