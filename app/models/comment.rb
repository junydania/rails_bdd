class Comment < ApplicationRecord

  belongs_to  :article, class_name: 'Article', foreign_key: 'article_id'
  validates_format_of :visitor_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
