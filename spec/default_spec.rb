# encoding: utf-8
require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'automysqlbackup::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'creates the mysqlbackup script' do
    expect(chef_run).to create_template('/etc/cron.daily/automysqlbackup')
  end

  it 'creates the backup directory' do
    expect(chef_run).to create_directory('/srv/backup/db')
  end
end
