describe 'iso_language', type: :model do

  describe 'lists of language-codes' do
    it "has a list of all language-codes as two letter strings" do
      expect(IsoLanguage.all).to be_an Array
      expect(IsoLanguage.all.map(&:class).uniq).to eq [String]
      expect(IsoLanguage.all.map(&:size).uniq).to eq [2]
    end

    it 'has a shortlist with most used languages' do
      expect(IsoLanguage.top_list).to include('en', 'fr')
    end

    it 'number of list in top- and rest- equal full list' do
      expect(IsoLanguage.top_list.count + IsoLanguage.rest_list.count).to eq(IsoLanguage.all.count)
    end
  end

end
