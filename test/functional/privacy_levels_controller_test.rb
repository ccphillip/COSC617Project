require 'test_helper'

class PrivacyLevelsControllerTest < ActionController::TestCase
  setup do
    @privacy_level = privacy_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:privacy_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create privacy_level" do
    assert_difference('PrivacyLevel.count') do
      post :create, privacy_level: { description: @privacy_level.description, level: @privacy_level.level }
    end

    assert_redirected_to privacy_level_path(assigns(:privacy_level))
  end

  test "should show privacy_level" do
    get :show, id: @privacy_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @privacy_level
    assert_response :success
  end

  test "should update privacy_level" do
    put :update, id: @privacy_level, privacy_level: { description: @privacy_level.description, level: @privacy_level.level }
    assert_redirected_to privacy_level_path(assigns(:privacy_level))
  end

  test "should destroy privacy_level" do
    assert_difference('PrivacyLevel.count', -1) do
      delete :destroy, id: @privacy_level
    end

    assert_redirected_to privacy_levels_path
  end
end
