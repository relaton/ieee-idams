module Ieee
  module Idams
    # Represents a physical address
    class Address < Lutaml::Model::Serializable
      # Street address
      # @return [String] street address line
      attribute :street, :string

      # City
      # @return [String] city name
      attribute :city, :string

      # Country
      # @return [String] country name
      attribute :country, :string

      xml do
        root "address"
        map_element "street", to: :street
        map_element "city", to: :city
        map_element "country", to: :country
      end
    end
  end
end
