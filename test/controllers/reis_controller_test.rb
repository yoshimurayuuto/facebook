require 'test_helper'

class ReisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rei = reis(:one)
  end

  test "should get index" do
    get reis_url
    assert_response :success
  end

  test "should get new" do
    get new_rei_url
    assert_response :success
  end

  test "should create rei" do
    assert_difference('Rei.count') do
      post reis_url, params: { rei: { content: @rei.content } }
    end

    assert_redirected_to rei_url(Rei.last)
  end

  test "should show rei" do
    get rei_url(@rei)
    assert_response :success
  end

  test "should get edit" do
    get edit_rei_url(@rei)
    assert_response :success
  end

  test "should update rei" do
    patch rei_url(@rei), params: { rei: { content: @rei.content } }
    assert_redirected_to rei_url(@rei)
  end

  test "should destroy rei" do
    assert_difference('Rei.count', -1) do
      delete rei_url(@rei)
    end

    assert_redirected_to reis_url
  end
end
