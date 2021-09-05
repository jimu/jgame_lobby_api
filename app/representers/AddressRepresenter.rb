class AddressRepresenter

  def initialize(address)
    @address = address
  end

  def as_json
    {
      id: address.id,
      description: address.description,
      value: address.value,
      user_name: address.user.name
    }
  end

  private

  attr_reader :address
end
