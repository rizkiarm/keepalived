require 'spec_helper'

describe 'keepalived::default' do
  context 'default' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new.converge(described_recipe)
    end

    it 'installs package, configures, and manages service' do
      %w( install configure service ).each do |r|
        expect(chef_run).to include_recipe "keepalived::#{r}"
      end
    end

    it 'converges successfully' do
      chef_run # This should not raise an error
    end
  end
end
