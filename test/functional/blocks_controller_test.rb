require 'test_helper'

class BlocksControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Block.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Block.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Block.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to block_url(assigns(:block))
  end
  
  def test_edit
    get :edit, :id => Block.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Block.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Block.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Block.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Block.first
    assert_redirected_to block_url(assigns(:block))
  end
  
  def test_destroy
    block = Block.first
    delete :destroy, :id => block
    assert_redirected_to blocks_url
    assert !Block.exists?(block.id)
  end
end
