require 'test_helper'

class LancamentosControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:lancamentos)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_lancamento
    assert_difference('Lancamento.count') do
      post :create, :lancamento => { }
    end

    assert_redirected_to lancamento_path(assigns(:lancamento))
  end

  def test_should_show_lancamento
    get :show, :id => lancamentos(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => lancamentos(:one).id
    assert_response :success
  end

  def test_should_update_lancamento
    put :update, :id => lancamentos(:one).id, :lancamento => { }
    assert_redirected_to lancamento_path(assigns(:lancamento))
  end

  def test_should_destroy_lancamento
    assert_difference('Lancamento.count', -1) do
      delete :destroy, :id => lancamentos(:one).id
    end

    assert_redirected_to lancamentos_path
  end
end
