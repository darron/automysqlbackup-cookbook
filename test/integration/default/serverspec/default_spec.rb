# encoding: utf-8
require 'spec_helper'

# Write integration tests with Serverspec - http://serverspec.org/
describe 'automysqlbackup::default' do
  describe file('/etc/cron.daily/automysqlbackup') do
    it { should be_file }
  end

  describe file('/srv/backup/db') do
    it { should be_directory }
  end
end
