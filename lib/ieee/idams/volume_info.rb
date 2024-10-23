module Ieee
  module Idams

    # Contains volume metadata
    class VolumeInfo < Lutaml::Model::Serializable
      # Publication year
      # @return [Integer] year of publication
      attribute :year, :integer

      # System ID
      # @return [String] IDAMS internal ID
      attribute :idamsid, :string

      xml do
        root "volumeinfo"
        map_element "year", to: :year
        map_element "idamsid", to: :idamsid
      end
    end
  end
end
