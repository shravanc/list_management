require 'test_helper'

module Lms
  class ListsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get lists_index_url
      assert_response :success
    end

    test "should get show" do
      get lists_show_url
      assert_response :success
    end

    test "should get create" do
      get lists_create_url
      assert_response :success
    end

    test "should get update" do
      get lists_update_url
      assert_response :success
    end

  end
end
