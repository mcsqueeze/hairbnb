class Review < ApplicationRecord
  belongs_to :wig
  belongs_to :user
end
