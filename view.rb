require 'ostruct'
require 'erb'

class View
  def initialize(path)
    @path = path
    @variables = {}
  end

  def include(variable)
    @variables.merge!(variable)
  end

  def render
    template
  end

  private

  def template
    variables = OpenStruct.new(@variables)
    ERB.new(file).result(variables.instance_eval { binding })
  end

  def file
    File.read(path_erb_file)
  end

  def path_erb_file
    File.expand_path(@path)
  end
end
