class Micropost < ActiveRecord::Base
  belongs_to :user
  # Mettre les articles postés dans l'ordre inversé du plus récent au plus vieux. desc veut dire descendant
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
