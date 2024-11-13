# frozen_string_literal: true

require_relative "author"

module Ieee
  module Idams
    # Represents a group of authors
    class AuthorGroup < Lutaml::Model::Serializable
      # List of authors
      # @return [Array<Author>] authors of the work
      attribute :author, Author, collection: true

      xml do
        root "authorgroup"
        map_element "author", to: :author
      end
    end

    # Represents an individual author
    class Author < Lutaml::Model::Serializable
      # AMS ID
      # @return [Integer] author's AMS ID
      attribute :amsid, :integer

      # Order of authorship
      # @return [Integer] author's order in the list of authors
      attribute :authororder, :integer

      # Normalized author name
      # @return [String] surname, initials format
      attribute :normname, :string

      # Non-normalized author name
      # @return [String] original format name
      attribute :nonnormname, :string

      # First name
      # @return [String] author's first name
      attribute :firstname, :string

      # Middle name
      # @return [String] author's middle name/initial
      attribute :othername, :string

      # Last name
      # @return [String] author's surname
      attribute :surname, :string

      # Affiliation information
      # @return [AffiliationGroup] author's institutional affiliations
      attribute :affgrp, AffiliationGroup

      # Author type/role
      # @return [String] one of: author, editor
      attribute :authortype, :string, values: %w[author editor]

      xml do
        root "author"
        map_element "amsid", to: :amsid
        map_element "authororder", to: :authororder
        map_element "normname", to: :normname, cdata: true
        map_element "nonnormname", to: :nonnormname, cdata: true
        map_element "firstname", to: :firstname, cdata: true
        map_element "othername", to: :othername, cdata: true
        map_element "surname", to: :surname, cdata: true
        map_element "affgrp", to: :affgrp
        map_element "authortype", to: :authortype
      end
    end
  end
end
