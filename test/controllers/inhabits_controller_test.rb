require 'test_helper'

class InhabitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get inhabits_index_url
    assert_response :success
  end

end
