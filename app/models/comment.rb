class Comment < ApplicationRecord
   belongs_to :user
   belongs_to :mental_item
end