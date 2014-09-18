def startup(disable_ab_tests = true)
  Appium::Driver.new(desired_caps)
  # SauceLabs related caps
  $driver.caps["name"] = self.class.metadata[:full_description]
  $driver.caps["tags"] = "Android"
  $driver.start_driver

  Appium.promote_appium_methods RSpec::Core::ExampleGroup

  instantiate_page_objects($driver)
end

def teardown
  $driver.driver_quit
end
