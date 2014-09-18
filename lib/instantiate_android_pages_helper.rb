require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

def instantiate_page_objects(driver)
  @AndroidLandingPage = AndroidLandingPage.new(driver)
end
