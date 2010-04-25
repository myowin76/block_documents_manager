require 'test_helper'

class BlockDocumentsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => BlockDocument.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    BlockDocument.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    BlockDocument.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to block_document_url(assigns(:block_document))
  end
  
  def test_edit
    get :edit, :id => BlockDocument.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    BlockDocument.any_instance.stubs(:valid?).returns(false)
    put :update, :id => BlockDocument.first
    assert_template 'edit'
  end
  
  def test_update_valid
    BlockDocument.any_instance.stubs(:valid?).returns(true)
    put :update, :id => BlockDocument.first
    assert_redirected_to block_document_url(assigns(:block_document))
  end
  
  def test_destroy
    block_document = BlockDocument.first
    delete :destroy, :id => block_document
    assert_redirected_to block_documents_url
    assert !BlockDocument.exists?(block_document.id)
  end
end
