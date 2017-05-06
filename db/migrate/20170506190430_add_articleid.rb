class AddArticleid < ActiveRecord::Migration[5.1]

  def up
  add_column(:comments, "article_id", :integer, :after => "comment_content")
  end

  def down
  remove_column(:comments, "article_id")
  end

end
