class Account < ActiveRecord::Base
	has_many :account_entries, dependent: :destroy

	validates :name, presence: true, 
									length: {in: 1..70,
											message: "Please use better name between one and seventy characters"},
									uniqueness: true

  validate :your_name_is_not_dumb

  def your_name_is_not_dumb
  	if self.name.include?("dumb")
  		errors.add(:name, "is a dumb name")
  	end
  end

  def update_balance!
    update_attributes(
      balance: self.account_entries.sum(:amount)
    )
  end
end	