require 'test_helper'

class BlockTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Block.new.valid?
  end
end
