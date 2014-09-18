require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

class AndroidLandingPage

  def initialize(driver)
    @driver = driver
  end

  def wait_for_page
    wait_for_exist(false, :accessibility_id, "activity_splash")
  end

  def touch_login
    @driver.find_element(:accessibility_id, "login").click
  end
end
