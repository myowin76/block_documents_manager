require 'test_helper'

class BlockDocumentTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert BlockDocument.new.valid?
  end
end
