require 'spec_helper'

describe Author do
  
  let(:author) { Author.new(name: 'Andy Hunt') }

  it "should not be valid if name not present" do
    author.name = nil

    author.should_not be_valid
  end
end
