require 'spec_helper'

describe ApplicationHelper do

  describe "full_title" do
    it "shoud include the page title" do
      full_title("foo").should =~ /foo/
    end
  end
end
