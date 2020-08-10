require 'test_helper'

class FormFreelancersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get form_freelancers_new_url
    assert_response :success
  end

end
