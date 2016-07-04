control "minion" do
  describe service('salt-minion') do
    it { is_expected.to be_running }
    it { is_expected.to be_enabled }
  end
end
