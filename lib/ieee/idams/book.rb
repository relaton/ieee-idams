# lib/ieee/idams/publication.rb
# frozen_string_literal: true

module Ieee
  module Idams
    # Represents an IEEE IDAMS publication record
    class Publication < Lutaml::Model::Serializable
      # Publication title
      # @return [String] normalized title
      attribute :title, :string

      # Publication normalized title
      # @return [String] normalized title
      attribute :normtitle, :string

      # Standards family title
      # @return [String] family title for standards
      attribute :standardsfamilytitle, :string

      # Publication information
      # @return [PublicationInfo] detailed publication metadata
      attribute :publicationinfo, PublicationInfo

      # Volume information
      # @return [Volume] volume details
      attribute :volume, Volume

      xml do
        root "publication"
        map_element "title", to: :title
        map_element "normtitle", to: :normtitle
        map_element "standardsfamilytitle", to: :standardsfamilytitle
        map_element "publicationinfo", to: :publicationinfo
        map_element "volume", to: :volume
      end
    end
  end
end
