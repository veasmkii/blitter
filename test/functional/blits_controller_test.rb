require 'test_helper'

class BlitsControllerTest < ActionController::TestCase
  setup do
    @blit = blits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blit" do
    assert_difference('Blit.count') do
      post :create, blit: { created: @blit.created, message: @blit.message, user: @blit.user }
    end

    assert_redirected_to blit_path(assigns(:blit))
  end

  test "should show blit" do
    get :show, id: @blit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blit
    assert_response :success
  end

  test "should update blit" do
    put :update, id: @blit, blit: { created: @blit.created, message: @blit.message, user: @blit.user }
    assert_redirected_to blit_path(assigns(:blit))
  end

  test "should destroy blit" do
    assert_difference('Blit.count', -1) do
      delete :destroy, id: @blit
    end

    assert_redirected_to blits_path
  end
end
