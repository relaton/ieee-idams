# lib/ieee/idams/book_info.rb
# frozen_string_literal: true

module Ieee
  module Idams
    # Contains detailed metadata about an IEEE book
    class BookInfo < Lutaml::Model::Serializable
      # ISBN identifiers
      # @return [Array<Isbn>] ISBN numbers for different formats
      attribute :isbn, Isbn, collection: true

      # Topical browse categories
      # @return [PubTopicalBrowseSet] subject classifications
      attribute :pubtopicalbrowseset, PubTopicalBrowseSet

      # Book DOI
      # @return [String] digital object identifier
      attribute :bookdoi, :string

      # System ID
      # @return [String] IDAMS internal ID
      attribute :idamsid, :string

      # Publication status
      # @return [String] Active or Inactive
      attribute :bookstatus, :string, values: %w[Active Inactive]

      # Author information
      # @return [AuthorGroup] author details
      attribute :authorgroup, AuthorGroup

      # Copyright information
      # @return [CopyrightGroup] copyright details
      attribute :copyrightgroup, CopyrightGroup

      # Edition number
      # @return [Integer] numbered edition
      attribute :edition, :integer

      # Publisher details
      # @return [Publisher] publisher information
      attribute :publisher, Publisher

      xml do
        root "bookinfo"
        map_element "isbn", to: :isbn
        map_element "pubtopicalbrowseset", to: :pubtopicalbrowseset
        map_element "bookdoi", to: :bookdoi
        map_element "idamsid", to: :idamsid
        map_element "bookstatus", to: :bookstatus
        map_element "authorgroup", to: :authorgroup
        map_element "copyrightgroup", to: :copyrightgroup
        map_element "edition", to: :edition
        map_element "publisher", to: :publisher
      end
    end
  end
end
