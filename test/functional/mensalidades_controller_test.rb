require 'test_helper'

class MensalidadesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:mensalidades)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_mensalidade
    assert_difference('Mensalidade.count') do
      post :create, :mensalidade => { }
    end

    assert_redirected_to mensalidade_path(assigns(:mensalidade))
  end

  def test_should_show_mensalidade
    get :show, :id => mensalidades(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => mensalidades(:one).id
    assert_response :success
  end

  def test_should_update_mensalidade
    put :update, :id => mensalidades(:one).id, :mensalidade => { }
    assert_redirected_to mensalidade_path(assigns(:mensalidade))
  end

  def test_should_destroy_mensalidade
    assert_difference('Mensalidade.count', -1) do
      delete :destroy, :id => mensalidades(:one).id
    end

    assert_redirected_to mensalidades_path
  end
end
