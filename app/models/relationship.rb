class Relationship < ApplicationRecord
  #les relationship ont des follower et des followed.
  belongs_to :follower, class_name: "User"
 belongs_to :followed, class_name: "User"
 #pour valider les tests dans test/models/relationship_test.rb follower_id et followed_id doivent être présents
 validates :follower_id, presence: true
validates :followed_id, presence: true
end
