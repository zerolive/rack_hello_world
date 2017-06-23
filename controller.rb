require_relative 'view'

class Controller
  def initialize(path)
    @path = path
  end

  def action
    variables = { name: 'name' }
    view(variables)
  end

  private

  def view(variables={})
    view = View.new(@path)
    view.include(variables)
    view
  end
end
