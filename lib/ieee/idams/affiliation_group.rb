# frozen_string_literal: true

module Ieee
  module Idams
    # Represents a group of institutional affiliations
    class AffiliationGroup < Lutaml::Model::Serializable
      # List of affiliations
      # @return [Array<Affiliation>] institutional affiliations
      attribute :affn, Affiliation, collection: true, initialize_empty: true

      xml do
        element "affgrp"
        map_element "affn", to: :affn
      end
    end
  end
end
