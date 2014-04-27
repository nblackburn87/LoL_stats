require 'spec_helper'

describe Game do
  it { should validate_presence_of :champion }
  it { should validate_presence_of :kills }
  it { should validate_presence_of :deaths }
  it { should validate_presence_of :assists }
end
