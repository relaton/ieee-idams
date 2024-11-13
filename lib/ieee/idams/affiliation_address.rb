module Ieee
  module Idams
    # Represents a physical address
    class AffiliationAddress < Lutaml::Model::Serializable
      # Street address
      # @return [String] street address line
      attribute :street, :string

      # City
      # @return [String] city name
      attribute :city, :string

      # State
      # @return [String] state name
      attribute :state, :string

      # Country
      # @return [String] country name
      attribute :country, :string

      # Post code
      # @return [String] postal code
      attribute :postcode, :string

      xml do
        root "address"
        map_element "street", to: :street, cdata: true
        map_element "city", to: :city, cdata: true
        map_element "state", to: :state, cdata: true
        map_element "country", to: :country, cdata: true
        map_element "postcode", to: :postcode
      end
    end
  end
end