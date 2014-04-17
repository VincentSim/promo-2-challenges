# Optional
class Transaction
  attr_reader :amount, :date
  def initialize(amount)
    # Initialize amount and date of transaction
    @amount = amount
    @date = Time.now
  end

  def to_s
    # Nicely print transaction infos using Time#strftime.

  end
end
