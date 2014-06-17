class Character < ActiveRecord::Base
  belongs_to :television_show

  validates :character_name,
    presence: true,
    uniqueness: { scope: :television_show }
  validates :actor_name,
    presence: true
end
