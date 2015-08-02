class Customer < Account
		has_many :time_entries
		scope :premier, -> {where("employees > ?",88)}
		scope :newest, -> {order("created_at DESC").limit(10)}
		scope :starts_with, ->(letter) {where("name LIKE ?",letter + "%")}
end
