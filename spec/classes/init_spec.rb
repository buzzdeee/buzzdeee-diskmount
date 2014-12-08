require 'spec_helper'
describe 'diskmount' do

  context 'with defaults for all parameters' do
    it { should contain_class('diskmount') }
  end
end
