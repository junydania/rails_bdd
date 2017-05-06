require 'rails_helper'
require './app/models/comment.rb'


RSpec.describe Comment, type: :model do
  describe 'DB Table' do
    it { is_expected.to have_db_column  :id }
    it { is_expected.to have_db_column  :comment_content }
    it { is_expected.to have_db_column  :visitor_email }
    it { should belong_to(:article)}
  end
end
