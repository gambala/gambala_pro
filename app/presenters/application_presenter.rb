class ApplicationPresenter
  def initialize(object, template)
    @object = object
    @template = template
  end

  def self.presents(name)
    define_method(name) do
      @object
    end
  end

  private

  def method_missing(*args, &block)
    @object.send(*args, &block) || super
  end

  def respond_to_missing?(method_name, include_private = false)
    super
  end
end
