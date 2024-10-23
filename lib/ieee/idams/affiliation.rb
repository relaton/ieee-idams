module Ieee
  module Idams

    # Represents an institutional affiliation
    class Affiliation < Lutaml::Model::Serializable
      # Organization name
      # @return [String] institution name
      attribute :orgname, :string

      # Organization division
      # @return [String] department or division
      attribute :orgdiv, :string

      # Address information
      # @return [Address] institutional address
      attribute :address, Address

      xml do
        root "affn"
        map_element "orgname", to: :orgname
        map_element "orgdiv", to: :orgdiv
        map_element "address", to: :address
      end
    end
  end
end
