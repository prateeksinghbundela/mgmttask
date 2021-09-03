class Task < ApplicationRecord
	scope :active, -> {where.not(state: "done")}
	belongs_to :user
end
