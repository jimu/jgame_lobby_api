class AddressesRepresenter

  def initialize(addresses)
    @addresses = addresses
  end

  def as_json
    @addresses.map do |address|
      {
        id: address.id,
        description: address.description,
        value: address.value,
        user_name: address.user.name
      }
    end
  end

  private

  attr_reader :addresses
end
