class Binome < ApplicationRecord
  belongs_to :user
  belongs_to :benevole
  belongs_to :client

  has_many :reports

  REQUEST_STATUS = ["🟢 RAS", "🟠 A SUIVRE", "🔴 CONTACT PERDU", "🔵 DOSSIER CLOTURE"]

  validates :request_status, inclusion: { in: REQUEST_STATUS }

  include PgSearch::Model
  pg_search_scope :search_by_request_status,
    against: [ :request_status ]

end
