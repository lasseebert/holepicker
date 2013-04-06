require 'holepicker/scanner'
require 'spec_helper'

describe HolePicker::Scanner do
  it "should not raise error" do
    HolePicker::OnlineDatabase.stubs(:load).returns('{}')
    HolePicker::FileFinder.stubs(:find_files).returns([])

    HolePicker::Scanner.new('.').scan
  end
end
