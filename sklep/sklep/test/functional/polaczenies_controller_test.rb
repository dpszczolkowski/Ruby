require 'test_helper'

class PolaczeniesControllerTest < ActionController::TestCase
  setup do
    @polaczeny = polaczenies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:polaczenies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create polaczeny" do
    assert_difference('Polaczenie.count') do
      post :create, polaczeny: { koszyk_id: @polaczeny.koszyk_id, produkt_id: @polaczeny.produkt_id }
    end

    assert_redirected_to polaczeny_path(assigns(:polaczeny))
  end

  test "should show polaczeny" do
    get :show, id: @polaczeny
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @polaczeny
    assert_response :success
  end

  test "should update polaczeny" do
    put :update, id: @polaczeny, polaczeny: { koszyk_id: @polaczeny.koszyk_id, produkt_id: @polaczeny.produkt_id }
    assert_redirected_to polaczeny_path(assigns(:polaczeny))
  end

  test "should destroy polaczeny" do
    assert_difference('Polaczenie.count', -1) do
      delete :destroy, id: @polaczeny
    end

    assert_redirected_to polaczenies_path
  end
end
