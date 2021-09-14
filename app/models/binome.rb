class Binome < ApplicationRecord
  belongs_to :user
  belongs_to :benevole
  belongs_to :client

  has_many :reports

  REQUEST_STATUS = ["RAS", "A SUIVRE", "CONTACT PERDU", "DOSSIER CLOTURE"]

  validates :request_status, inclusion: { in: REQUEST_STATUS }
end
