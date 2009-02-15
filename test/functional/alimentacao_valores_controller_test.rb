require 'test_helper'

class AlimentacaoValoresControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:alimentacao_valores)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_alimentacao_valor
    assert_difference('AlimentacaoValor.count') do
      post :create, :alimentacao_valor => { }
    end

    assert_redirected_to alimentacao_valor_path(assigns(:alimentacao_valor))
  end

  def test_should_show_alimentacao_valor
    get :show, :id => alimentacao_valores(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => alimentacao_valores(:one).id
    assert_response :success
  end

  def test_should_update_alimentacao_valor
    put :update, :id => alimentacao_valores(:one).id, :alimentacao_valor => { }
    assert_redirected_to alimentacao_valor_path(assigns(:alimentacao_valor))
  end

  def test_should_destroy_alimentacao_valor
    assert_difference('AlimentacaoValor.count', -1) do
      delete :destroy, :id => alimentacao_valores(:one).id
    end

    assert_redirected_to alimentacao_valores_path
  end
end
