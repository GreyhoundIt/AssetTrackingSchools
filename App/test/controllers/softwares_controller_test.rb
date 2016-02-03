require 'test_helper'

class SoftwaresControllerTest < ActionController::TestCase
  setup do
    @software = softwares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:softwares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create software" do
    assert_difference('Software.count') do
      post :create, software: { asset_tag: @software.asset_tag, cost: @software.cost, description: @software.description, invoice: @software.invoice, licence_key: @software.licence_key, licence_type: @software.licence_type, name: @software.name, note: @software.note, number_of_licences: @software.number_of_licences, purchase_date: @software.purchase_date, renewal_date: @software.renewal_date }
    end

    assert_redirected_to software_path(assigns(:software))
  end

  test "should show software" do
    get :show, id: @software
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @software
    assert_response :success
  end

  test "should update software" do
    patch :update, id: @software, software: { asset_tag: @software.asset_tag, cost: @software.cost, description: @software.description, invoice: @software.invoice, licence_key: @software.licence_key, licence_type: @software.licence_type, name: @software.name, note: @software.note, number_of_licences: @software.number_of_licences, purchase_date: @software.purchase_date, renewal_date: @software.renewal_date }
    assert_redirected_to software_path(assigns(:software))
  end

  test "should destroy software" do
    assert_difference('Software.count', -1) do
      delete :destroy, id: @software
    end

    assert_redirected_to softwares_path
  end
end
