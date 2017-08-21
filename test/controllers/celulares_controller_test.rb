require 'test_helper'

class CelularesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @celulare = celulares(:one)
  end

  test "should get index" do
    get celulares_url
    assert_response :success
  end

  test "should get new" do
    get new_celulare_url
    assert_response :success
  end

  test "should create celulare" do
    assert_difference('Celulare.count') do
      post celulares_url, params: { celulare: { memoriaex: @celulare.memoriaex, memoriain: @celulare.memoriain, modelo: @celulare.modelo, precio: @celulare.precio } }
    end

    assert_redirected_to celulare_url(Celulare.last)
  end

  test "should show celulare" do
    get celulare_url(@celulare)
    assert_response :success
  end

  test "should get edit" do
    get edit_celulare_url(@celulare)
    assert_response :success
  end

  test "should update celulare" do
    patch celulare_url(@celulare), params: { celulare: { memoriaex: @celulare.memoriaex, memoriain: @celulare.memoriain, modelo: @celulare.modelo, precio: @celulare.precio } }
    assert_redirected_to celulare_url(@celulare)
  end

  test "should destroy celulare" do
    assert_difference('Celulare.count', -1) do
      delete celulare_url(@celulare)
    end

    assert_redirected_to celulares_url
  end
end
