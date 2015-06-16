require 'test_helper'

class Api::SubwaysControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Subway.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Subway.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Subway.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to api_subway_url(assigns(:subway))
  end

  def test_edit
    get :edit, :id => Subway.first
    assert_template 'edit'
  end

  def test_update_invalid
    Subway.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Subway.first
    assert_template 'edit'
  end

  def test_update_valid
    Subway.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Subway.first
    assert_redirected_to api_subway_url(assigns(:subway))
  end

  def test_destroy
    subway = Subway.first
    delete :destroy, :id => subway
    assert_redirected_to api_subways_url
    assert !Subway.exists?(subway.id)
  end
end
