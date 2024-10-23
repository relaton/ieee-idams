require_relative "keyword_set"
require_relative "author_group"

module Ieee
  module Idams

    # Contains detailed metadata about an article
    class ArticleInfo < Lutaml::Model::Serializable
      # Sequence number
      # @return [Integer] article sequence number
      attribute :articleseqnum, :integer

      # Digital Object Identifier
      # @return [String] DOI for the article
      attribute :articledoi, :string

      # System ID
      # @return [String] IDAMS internal ID
      attribute :idamsid, :string

      # Article status
      # @return [String] Active or Inactive
      attribute :articlestatus, :string, values: %w[Active Inactive]

      # Open access status
      # @return [String] open access indicator
      attribute :articleopenaccess, :string

      # Display flag
      # @return [String] show/hide indicator
      attribute :articleshowflag, :string

      # Hold status
      # @return [String] Publish or Hold
      attribute :holdstatus, :string, values: %w[Publish Hold]

      # Abstract
      # @return [String] article abstract
      attribute :abstract, :string

      # Author information
      # @return [AuthorGroup] article authors
      attribute :authorgroup, AuthorGroup

      # Number of pages
      # @return [Integer] page count
      attribute :numpages, :integer

      # File size in bytes
      # @return [Integer] PDF file size
      attribute :size, :integer

      # PDF filename
      # @return [String] name of PDF file
      attribute :filename, :string, raw: true

      # Page numbers
      # @return [String] start and end page numbers
      attribute :artpagenums, :string

      # System ID
      # @return [String] AMS internal ID
      attribute :amsid, :string

      # Keywords
      # @return [Array<KeywordSet>] article keywords
      attribute :keywordset, KeywordSet, collection: true

      xml do
        root "articleinfo"
        map_element "articleseqnum", to: :articleseqnum
        map_element "articledoi", to: :articledoi
        map_element "idamsid", to: :idamsid
        map_element "articlestatus", to: :articlestatus
        map_element "articleopenaccess", to: :articleopenaccess
        map_element "articleshowflag", to: :articleshowflag
        map_element "holdstatus", to: :holdstatus
        map_element "abstract", to: :abstract
        map_element "authorgroup", to: :authorgroup
        map_element "numpages", to: :numpages
        map_element "size", to: :size
        map_element "filename", to: :filename
        map_element "artpagenums", to: :artpagenums
        map_element "amsid", to: :amsid
        map_element "keywordset", to: :keywordset
      end
    end
  end
end
