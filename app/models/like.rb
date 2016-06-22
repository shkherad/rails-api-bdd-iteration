class Like < ActiveRecord::Base
  belongs_to :comment, inverse_of: :likes
end
