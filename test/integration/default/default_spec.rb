describe command('yum -y install postgresql93') do
  its('exit_status') { should eq 0 }
end
