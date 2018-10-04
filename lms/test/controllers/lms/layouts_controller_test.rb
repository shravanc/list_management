require 'test_helper'

module Lms
  class LayoutsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get layouts_index_url
      assert_response :success
    end

    test "should get create" do
      get layouts_create_url
      assert_response :success
    end

  end
end
