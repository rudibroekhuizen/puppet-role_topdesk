require 'spec_helper'
describe 'role_topdesk' do

  context 'with defaults for all parameters' do
    it { should contain_class('role_topdesk') }
  end
end
