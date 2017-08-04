class Relationship < ApplicationRecord
  #les relationship ont des follower et des followed.
  belongs_to :follower, class_name: "User"
 belongs_to :followed, class_name: "User"
end
