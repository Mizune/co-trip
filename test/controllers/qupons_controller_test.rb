require 'test_helper'

class QuponsControllerTest < ActionController::TestCase
  setup do
    @qupon = qupons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qupons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qupon" do
    assert_difference('Qupon.count') do
      post :create, qupon: { date: @qupon.date, discription: @qupon.discription, image: @qupon.image, name: @qupon.name, quponflag: @qupon.quponflag }
    end

    assert_redirected_to qupon_path(assigns(:qupon))
  end

  test "should show qupon" do
    get :show, id: @qupon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qupon
    assert_response :success
  end

  test "should update qupon" do
    patch :update, id: @qupon, qupon: { date: @qupon.date, discription: @qupon.discription, image: @qupon.image, name: @qupon.name, quponflag: @qupon.quponflag }
    assert_redirected_to qupon_path(assigns(:qupon))
  end

  test "should destroy qupon" do
    assert_difference('Qupon.count', -1) do
      delete :destroy, id: @qupon
    end

    assert_redirected_to qupons_path
  end
end
