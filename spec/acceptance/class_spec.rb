if ENV['BEAKER'] == 'true'
  # running in BEAKER test environment
  require 'spec_helper_acceptance'
else
  # running in non BEAKER environment
  require 'serverspec'
  set :backend, :exec
end

describe 'role_ciserver class' do

  context 'default parameters' do
    if ENV['BEAKER'] == 'true'
      # Using puppet_apply as a helper
      it 'should work with no errors' do
        pp = <<-EOS
        class { 'role_ciserver': }
        EOS

        apply_manifest(pp, :catch_failures => false, :future_parser => true)
        sleep(10) # Jenkins takes a while to start up
        apply_manifest(pp, :catch_failures => true, :future_parser => true)

      end
    end
  end
end
