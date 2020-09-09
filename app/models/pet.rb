class Pet < ApplicationRecord
  SPECIES = %w(dog cat snake turtle eagle).freeze

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.today - date_found).to_i
  end
end
