class RenameCommentColumn < ActiveRecord::Migration[5.1]

  def up
    rename_column(:comments, "content", "comment_content")
  end

  def down
    rename_column(:comments, "comment_content", "content")
  end

end
