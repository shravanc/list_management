require 'test_helper'

module Lms
  class AppsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get apps_index_url
      assert_response :success
    end

    test "should get create" do
      get apps_create_url
      assert_response :success
    end

  end
end
