require 'rails_helper'

RSpec.describe Comment do
  describe 'associations' do
    def association
      described_class.reflect_on_association(:article)
    end

  #is associated with comments

  it 'has an association with one article' do
    expect(association).to_not be_nil
    expect(association.name).to eq(:article)
  end

  it 'has a set inverse of record' do
    expect(association.options[:inverse_of]).to eq(:comments)
  end

  it 'deletes associated likes when destroyed' do
    expect(association.options[:dependent]).to eq(:destroy)
  end


  #make sure have title and content when created
  it 'validates presence of content when created' do
    expect(Comment.create(content: 'content blah blah')).to be_valid
    expect(Comment.create).to be_invalid
  end
end
end
