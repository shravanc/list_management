require 'test_helper'

module Lms
  class ItemsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get items_index_url
      assert_response :success
    end

    test "should get show" do
      get items_show_url
      assert_response :success
    end

    test "should get create" do
      get items_create_url
      assert_response :success
    end

    test "should get update" do
      get items_update_url
      assert_response :success
    end

  end
end
