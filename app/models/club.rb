class Club < ApplicationRecord
  after_create  :update_stats

  validates :club_name, presence: true
  validates :member_count, numericality: { only_integer: true }

  validates :contact_name, presence: true
  validates :contact_email, presence: true

  protected

  def update_stats
    stat    = Stat.instance
    members = self.member_count
    members = members + stat.members_count
    stat.increment! :clubs_count, 1
    stat.update_attribute :members_count, members
  end
end
