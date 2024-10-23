# lib/ieee/idams/pub_sponsoring_committee_set.rb
# frozen_string_literal: true

module Ieee
  module Idams
    # Represents a set of sponsoring committees
    class PubSponsoringCommitteeSet < Lutaml::Model::Serializable
      # List of committees
      # @return [Array<String>] sponsoring committees
      attribute :pubsponsoringcommittee, :string, collection: true

      xml do
        root "pubsponsoringcommitteeset"
        map_element "pubsponsoringcommittee", to: :pubsponsoringcommittee
      end
    end
  end
end
