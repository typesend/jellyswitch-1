class Bootstrap::Modal < ApplicationComponent
  def initialize(id:)
    @id = id
  end

  private

  attr_accessor :id
end