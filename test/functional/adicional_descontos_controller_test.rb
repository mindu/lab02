require 'test_helper'

class AdicionalDescontosControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:adicional_descontos)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_adicional_desconto
    assert_difference('AdicionalDesconto.count') do
      post :create, :adicional_desconto => { }
    end

    assert_redirected_to adicional_desconto_path(assigns(:adicional_desconto))
  end

  def test_should_show_adicional_desconto
    get :show, :id => adicional_descontos(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => adicional_descontos(:one).id
    assert_response :success
  end

  def test_should_update_adicional_desconto
    put :update, :id => adicional_descontos(:one).id, :adicional_desconto => { }
    assert_redirected_to adicional_desconto_path(assigns(:adicional_desconto))
  end

  def test_should_destroy_adicional_desconto
    assert_difference('AdicionalDesconto.count', -1) do
      delete :destroy, :id => adicional_descontos(:one).id
    end

    assert_redirected_to adicional_descontos_path
  end
end
