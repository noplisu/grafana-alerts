require 'test_helper'

class AlertLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alert_log = alert_logs(:one)
  end

  test "should get index" do
    get alert_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_alert_log_url
    assert_response :success
  end

  test "should create alert_log" do
    assert_difference('AlertLog.count') do
      post alert_logs_url, params: { alert_log: {  } }
    end

    assert_redirected_to alert_log_url(AlertLog.last)
  end

  test "should show alert_log" do
    get alert_log_url(@alert_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_alert_log_url(@alert_log)
    assert_response :success
  end

  test "should update alert_log" do
    patch alert_log_url(@alert_log), params: { alert_log: {  } }
    assert_redirected_to alert_log_url(@alert_log)
  end

  test "should destroy alert_log" do
    assert_difference('AlertLog.count', -1) do
      delete alert_log_url(@alert_log)
    end

    assert_redirected_to alert_logs_url
  end
end
