require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "example spec describe" do
    context "example spec context" do
        it "should wait for landing page to display" do
            @AndroidLandingPage.wait_for_page
        end
    end
end
