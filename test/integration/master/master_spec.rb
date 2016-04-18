control "master" do
  describe service('salt-master') do
    it { is_expected.to be_running }
    it { is_expected.to be_enabled }
  end

  describe command('sudo salt-call cp.list_states') do
    its(:stdout) { is_expected.to match(<<EOS
local:
    - salt.api
    - salt.deps
    - salt
    - salt.master
    - salt.minion
    - salt.repo
EOS
) }
  end
end
