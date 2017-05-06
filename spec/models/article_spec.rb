require 'rails_helper'
require './app/models/article.rb'


RSpec.describe Article, type:  :model do
  describe 'DB Table' do
    it { is_expected.to have_db_column  :id }
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :content }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :content }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:article)).to be_valid
    end
  end

  describe 'Test Associations' do
  it 'has many comments' do
    relation = described_class.reflect_on_association(:comments)
    expect(relation.macro).to eq :has_many
  end
  end
end
