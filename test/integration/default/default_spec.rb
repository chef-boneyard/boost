control 'boost::default recipe' do
  describe file('/usr/include/boost') do
    it { should be_directory }
  end
end
