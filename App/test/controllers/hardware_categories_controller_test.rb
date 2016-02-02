require 'test_helper'

class HardwareCategoriesControllerTest < ActionController::TestCase
  setup do
    @hardware_category = hardware_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hardware_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hardware_category" do
    assert_difference('HardwareCategory.count') do
      post :create, hardware_category: { name: @hardware_category.name }
    end

    assert_redirected_to hardware_category_path(assigns(:hardware_category))
  end

  test "should show hardware_category" do
    get :show, id: @hardware_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hardware_category
    assert_response :success
  end

  test "should update hardware_category" do
    patch :update, id: @hardware_category, hardware_category: { name: @hardware_category.name }
    assert_redirected_to hardware_category_path(assigns(:hardware_category))
  end

  test "should destroy hardware_category" do
    assert_difference('HardwareCategory.count', -1) do
      delete :destroy, id: @hardware_category
    end

    assert_redirected_to hardware_categories_path
  end
end
