require 'rails_helper'

RSpec.describe Like do
  describe 'associations' do
    def association
      described_class.reflect_on_association(:comment)
    end

  #is associated with comments

  it 'has an association with one article' do
    expect(association).to_not be_nil
    expect(association.name).to eq(:comment)
  end

  it 'has a set inverse of record' do
    expect(association.options[:inverse_of]).to eq(:likes)
  end

end
end
