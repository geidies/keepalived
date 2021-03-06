require 'spec_helper'

describe 'keepalived::service' do
  context 'default' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new.converge(described_recipe)
    end

    it 'enables & starts the service' do
      expect(chef_run).to enable_service 'keepalived'
      expect(chef_run).to start_service 'keepalived'
    end

    it 'converges successfully' do
      chef_run # This should not raise an error
    end
  end
end
