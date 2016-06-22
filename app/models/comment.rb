class Comment < ActiveRecord::Base
  belongs_to :article, inverse_of: :comments, dependent: :destroy
  validates_presence_of :content
end
