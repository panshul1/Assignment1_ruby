require 'test_helper'

class EnrollmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get enrollments_index_url
    assert_response :success
  end

  test "should get new" do
    get enrollments_new_url
    assert_response :success
  end

  test "should get create" do
    get enrollments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get enrollments_destroy_url
    assert_response :success
  end

end
