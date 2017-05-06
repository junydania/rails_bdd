class AddVisitorEmailColumn < ActiveRecord::Migration[5.1]
  def up
    add_column(:comments, "visitor_email", :string, :after => "comment_content")
  end

  def down
    remove_column(:comments, "visitor_email")
  end
end
