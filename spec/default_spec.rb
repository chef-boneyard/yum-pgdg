require 'spec_helper'

describe 'yum-pgdg::default' do
  context 'yum-pgdgs::default uses default attributes' do
    let(:chef_run) { ChefSpec::Runner.new(:step_into => ['yum_repository']).converge(described_recipe) }

    it 'creates yum_repository[pgdg]' do
      expect(chef_run).to create_yum_repository('pgdg')
    end

    it 'steps into yum_repository and creates template[/etc/yum.repos.d/pgdg-9.3.repo]' do
      expect(chef_run).to render_file('/etc/yum.repos.d/pgdg-9.3.repo')
    end

  end
end
