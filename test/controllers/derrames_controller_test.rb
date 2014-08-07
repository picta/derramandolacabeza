require 'test_helper'

class DerramesControllerTest < ActionController::TestCase
  setup do
    @derrame = derrames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:derrames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create derrame" do
    assert_difference('Derrame.count') do
      post :create, derrame: { content: @derrame.content, title: @derrame.title }
    end

    assert_redirected_to derrame_path(assigns(:derrame))
  end

  test "should show derrame" do
    get :show, id: @derrame
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @derrame
    assert_response :success
  end

  test "should update derrame" do
    patch :update, id: @derrame, derrame: { content: @derrame.content, title: @derrame.title }
    assert_redirected_to derrame_path(assigns(:derrame))
  end

  test "should destroy derrame" do
    assert_difference('Derrame.count', -1) do
      delete :destroy, id: @derrame
    end

    assert_redirected_to derrames_path
  end
end
