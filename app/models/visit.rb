class Visit < ActiveRecord::Base
  has_many :messages

  validates :uuid, presence: true

  def self.current(id, uuid)
    where(:id => id, :uuid => uuid).first
  end
end
