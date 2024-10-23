# lib/ieee/idams/publication_info.rb
# frozen_string_literal: true

require_relative "isbn"
require_relative "copyright_group"
require_relative "publisher"
require_relative "address"
require_relative "pub_sponsoring_committee_set"
require_relative "pub_topical_browse_set"

module Ieee
  module Idams
    # Contains detailed metadata about an IEEE publication
    class PublicationInfo < Lutaml::Model::Serializable
      # System ID
      # @return [String] IDAMS internal ID
      attribute :idamsid, :string

      # Standard number
      # @return [String] standard identifier
      attribute :stdnumber, :string

      # Publication type
      # @return [String] type of publication
      attribute :publicationtype, :string

      # Publication subtype
      # @return [String] subtype of publication
      attribute :publicationsubtype, :string

      # Standard subtype
      # @return [String] subtype of standard
      attribute :standard_subtype, :string

      # IEEE abbreviation
      # @return [String] IEEE abbreviation
      attribute :ieeeabbrev, :string

      # Publication status
      # @return [String] Active or Inactive
      attribute :pubstatus, :string, values: %w[Active Inactive]

      # Open access status
      # @return [String] open access indicator
      attribute :publicationopenaccess, :string

      # Standard ID
      # @return [String] standard identifier
      attribute :standard_id, :string

      # Standard status
      # @return [String] standard status
      attribute :standard_status, :string

      # ISBN information
      # @return [Isbn] ISBN details
      attribute :isbn, Isbn

      # Copyright information
      # @return [CopyrightGroup] copyright details
      attribute :copyrightgroup, CopyrightGroup

      # Publisher information
      # @return [Publisher] publisher details
      attribute :publisher, Publisher

      # Sponsoring committees
      # @return [PubSponsoringCommitteeSet] committee information
      attribute :pubsponsoringcommitteeset, PubSponsoringCommitteeSet

      # Topical browse categories
      # @return [PubTopicalBrowseSet] subject classifications
      attribute :pubtopicalbrowseset, PubTopicalBrowseSet

      xml do
        root "publicationinfo"
        map_element "idamsid", to: :idamsid
        map_element "stdnumber", to: :stdnumber
        map_element "publicationtype", to: :publicationtype
        map_element "publicationsubtype", to: :publicationsubtype
        map_element "standard_subtype", to: :standard_subtype
        map_element "ieeeabbrev", to: :ieeeabbrev
        map_element "pubstatus", to: :pubstatus
        map_element "publicationopenaccess", to: :publicationopenaccess
        map_element "standard_id", to: :standard_id
        map_element "standard_status", to: :standard_status
        map_element "isbn", to: :isbn
        map_element "copyrightgroup", to: :copyrightgroup
        map_element "publisher", to: :publisher
        map_element "pubsponsoringcommitteeset", to: :pubsponsoringcommitteeset
        map_element "pubtopicalbrowseset", to: :pubtopicalbrowseset
      end
    end
  end
end
