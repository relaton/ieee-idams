# frozen_string_literal: true

require_relative "volume_info_issue"

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

      # Issue information
      # @return [VolumeInfoIssue] detailed issue metadata
      attribute :issue, VolumeInfoIssue

      xml do
        root "volumeinfo"
        map_element "year", to: :year
        map_element "idamsid", to: :idamsid
        map_element "issue", to: :issue
      end
    end
  end
end
