class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :archived, :capacity, :payments, :remaining, :created_at, :updated_at

  def price
    {
      "price_cents": object.price.fractional,
      "price_formatted": object.price.format,
    }
  end

  def remaining
    object.capacity == 0 ? -1 : object.capacity - object.payments.count
  end

  def payments
    if serialization_options[:admin]
      {
        transactions: object.payments,
        total: object.payments.count * object.price,
      }
    else
      nil
    end
  end
end
