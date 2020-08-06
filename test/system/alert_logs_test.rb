require "application_system_test_case"

class AlertLogsTest < ApplicationSystemTestCase
  setup do
    @alert_log = alert_logs(:one)
  end

  test "visiting the index" do
    visit alert_logs_url
    assert_selector "h1", text: "Alert Logs"
  end

  test "creating a Alert log" do
    visit alert_logs_url
    click_on "New Alert Log"

    click_on "Create Alert log"

    assert_text "Alert log was successfully created"
    click_on "Back"
  end

  test "updating a Alert log" do
    visit alert_logs_url
    click_on "Edit", match: :first

    click_on "Update Alert log"

    assert_text "Alert log was successfully updated"
    click_on "Back"
  end

  test "destroying a Alert log" do
    visit alert_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alert log was successfully destroyed"
  end
end
