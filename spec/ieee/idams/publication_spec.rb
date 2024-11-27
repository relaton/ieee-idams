# frozen_string_literal: true

RSpec.describe Ieee::Idams::Publication do
  # it "parses and serializes a simple file" do
  #   yaml = Ieee::Idams::Publication.from_xml(File.read("spec/fixtures/record_1.xml")).to_yaml
  #   expect(yaml).to_not be_nil
  # end

  Dir.glob("spec/fixtures/*.xml").each do |f|
    input = File.read(f)
    next if input.empty?

    it "round-trips IEEE IDAMS record: #{f}" do
      pub_model = Ieee::Idams::Publication.from_xml(input)
      output = Ieee::Idams::Publication.to_xml(pub_model)
      #   pretty: true,
      #   declaration: true,
      #   encoding: "utf-8"
      # )

      expect(output).to be_analogous_with(input)
    end
  end
end
