class SocietySerializer < ActiveModel::Serializer
  root :data
  attributes :society
  has_many :items, serializer: ItemSerializer, root: false

  def society
    {
      "id": object.id,
      "name": object.name,
      "nickname": object.nickname,
      "auth_token": auth_token,
      "email": object.email,
      "created_at": object.created_at,
      "updated_at": object.updated_at,
      "balance": balance,
      "sort_code": sort_code,
      "account_number": account_number,
    }
  end

  def sort_code
    serialization_options[:admin] ? object.sort_code : nil
  end

  def account_number
    serialization_options[:admin] ? object.account_number : nil
  end

  def auth_token
    serialization_options[:admin] ? object.auth_token : nil
  end

  def email
    serialization_options[:admin] ? object.email : nil
  end

  def balance
    if serialization_options[:admin]
      {
        "balance_cents": object.balance.fractional,
        "balance_formatted": object.balance.format,
      }
    else
      nil
    end
  end
end
