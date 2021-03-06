class List < ApplicationRecord
  belongs_to :team
  has_many :tasks, dependent: :destroy

  validates :name, presence: true

  def client_id
    @client_id ||= SecureRandom.uuid
  end
end
