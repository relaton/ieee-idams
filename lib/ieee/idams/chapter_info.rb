# lib/ieee/idams/chapter_info.rb
# frozen_string_literal: true

module Ieee
  module Idams
    # Contains detailed metadata about a book chapter
    class ChapterInfo < Lutaml::Model::Serializable
      # Sequence number in book
      # @return [Integer] chapter sequence number
      attribute :chapterseqnum, :integer

      # Chapter DOI
      # @return [String] digital object identifier
      attribute :chapterdoi, :string

      # Publication status
      # @return [String] Active or Inactive
      attribute :chapterstatus, :string, values: %w[Active Inactive]

      # Content type
      # @return [String] type of chapter content
      attribute :chaptercontenttype, :string, values: %w[Chapter Front\ matter Back\ matter Erratum Miscellaneous Part\ Introduction]

      # Chapter number
      # @return [String] chapter number/identifier
      attribute :chapternum, :string

      # Abstract text
      # @return [String] chapter abstract
      attribute :abstract, :string

      # Author information
      # @return [AuthorGroup] chapter authors
      attribute :authorgroup, AuthorGroup

      # Number of pages
      # @return [Integer] page count
      attribute :numpages, :integer

      # File size in bytes
      # @return [Integer] PDF file size
      attribute :size, :integer

      # PDF filename
      # @return [String] name of PDF file
      attribute :filename, :string

      # Page numbers
      # @return [String] start and end page numbers
      attribute :chapterpagenums, :string

      # System ID
      # @return [String] IDAMS internal ID
      attribute :amsid, :string

      xml do
        root "chapterinfo"
        map_element "chapterseqnum", to: :chapterseqnum
        map_element "chapterdoi", to: :chapterdoi
        map_element "chapterstatus", to: :chapterstatus
        map_element "chaptercontenttype", to: :chaptercontenttype
        map_element "chapternum", to: :chapternum
        map_element "abstract", to: :abstract
        map_element "authorgroup", to: :authorgroup
        map_element "numpages", to: :numpages
        map_element "size", to: :size
        map_element "filename", to: :filename
        map_element "chapterpagenums", to: :chapterpagenums
        map_element "amsid", to: :amsid
      end
    end
  end
end
