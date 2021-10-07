require 'test_helper'

class AlmunisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @almuni = almunis(:one)
  end

  test "should get index" do
    get almunis_url
    assert_response :success
  end

  test "should get new" do
    get new_almuni_url
    assert_response :success
  end

  test "should create almuni" do
    assert_difference('Almuni.count') do
      post almunis_url, params: { almuni: {  } }
    end

    assert_redirected_to almuni_url(Almuni.last)
  end

  test "should show almuni" do
    get almuni_url(@almuni)
    assert_response :success
  end

  test "should get edit" do
    get edit_almuni_url(@almuni)
    assert_response :success
  end

  test "should update almuni" do
    patch almuni_url(@almuni), params: { almuni: {  } }
    assert_redirected_to almuni_url(@almuni)
  end

  test "should destroy almuni" do
    assert_difference('Almuni.count', -1) do
      delete almuni_url(@almuni)
    end

    assert_redirected_to almunis_url
  end
end
