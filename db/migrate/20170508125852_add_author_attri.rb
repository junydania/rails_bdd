class AddAuthorAttri < ActiveRecord::Migration[5.1]
  def change
    add_column(:articles, "author", :string, :after => "comment_content")
  end

  def down
    remove_column(:articles, "author", :string)
  end

end
