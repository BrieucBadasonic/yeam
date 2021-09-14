class Binome < ApplicationRecord
  belongs_to :user
  belongs_to :benevole
  belongs_to :client
end
