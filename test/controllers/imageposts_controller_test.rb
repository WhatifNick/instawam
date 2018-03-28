require 'test_helper'

class ImagepostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @imagepost = imageposts(:one)
  end

  test "should get index" do
    get imageposts_url
    assert_response :success
  end

  test "should get new" do
    get new_imagepost_url
    assert_response :success
  end

  test "should create imagepost" do
    assert_difference('Imagepost.count') do
      post imageposts_url, params: { imagepost: { image_url: @imagepost.image_url, user_id: @imagepost.user_id } }
    end

    assert_redirected_to imagepost_url(Imagepost.last)
  end

  test "should show imagepost" do
    get imagepost_url(@imagepost)
    assert_response :success
  end

  test "should get edit" do
    get edit_imagepost_url(@imagepost)
    assert_response :success
  end

  test "should update imagepost" do
    patch imagepost_url(@imagepost), params: { imagepost: { image_url: @imagepost.image_url, user_id: @imagepost.user_id } }
    assert_redirected_to imagepost_url(@imagepost)
  end

  test "should destroy imagepost" do
    assert_difference('Imagepost.count', -1) do
      delete imagepost_url(@imagepost)
    end

    assert_redirected_to imageposts_url
  end
end
