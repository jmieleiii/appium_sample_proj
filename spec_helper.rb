require "rubygems"
require "bundler/setup"
require "rspec"
require "appium_lib"
require File.expand_path(File.dirname(__FILE__) + "/shared_functions.rb")
Dir[File.expand_path(File.dirname(__FILE__) + "/lib/*.rb")].each { |file| require file }

def desired_caps
{
  caps: {
    :'appium-version' => "1.2.0",
    automationName: "Android",
    platformName: "Android",
    platformVersion: "4.4",
    deviceName: "Android Emulator",
    app: path_to_app,
  },
  appium_lib: {
    wait: 15,
  }
}
end

RSpec.configure do |config|
  config.before(:all) do
    startup
  end

  config.after(:all) do
    teardown
  end
end
