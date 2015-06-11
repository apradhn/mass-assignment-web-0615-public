require "pry"

class Person
  # code here
  
  def initialize(properties)
    properties.each do |key, value|
      instance_variable_set("@#{key.to_s}", value)
      define_singleton_method(key) { value }
    end
  end  

end