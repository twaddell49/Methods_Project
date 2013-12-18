require 'test_helper'

class CriticsControllerTest < ActionController::TestCase
  setup do
    @critic = critics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:critics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create critic" do
    assert_difference('Critic.count') do
      post :create, critic: { email: @critic.email, name: @critic.name }
    end

    assert_redirected_to critic_path(assigns(:critic))
  end

  test "should show critic" do
    get :show, id: @critic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @critic
    assert_response :success
  end

  test "should update critic" do
    put :update, id: @critic, critic: { email: @critic.email, name: @critic.name }
    assert_redirected_to critic_path(assigns(:critic))
  end

  test "should destroy critic" do
    assert_difference('Critic.count', -1) do
      delete :destroy, id: @critic
    end

    assert_redirected_to critics_path
  end
end
