# frozen_string_literal: true

require_relative "affiliation_group"

module Ieee
  module Idams

    # Represents an individual author
    class Author < Lutaml::Model::Serializable
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
        map_element "normname", to: :normname
        map_element "nonnormname", to: :nonnormname
        map_element "firstname", to: :firstname
        map_element "othername", to: :othername
        map_element "surname", to: :surname
        map_element "affgrp", to: :affgrp
        map_element "authortype", to: :authortype
      end
    end
  end
end
