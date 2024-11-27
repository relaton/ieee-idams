# frozen_string_literal: true

RSpec.describe Ieee::Idams::PubModel do # rubocop:disable Metrics/BlockLength
  let(:xml) { File.read("spec/fixtures/00000003.xml") }
  subject { Ieee::Idams::Publication.from_xml(xml) }

  context "normalized title" do
    let(:xml) { File.read("spec/fixtures/06658816.xml") }

    it do
      expect(subject.btitle).to eq [
        {
          content: "IEEE Standard for Electrical Safety Practices in Electrolytic Cell Line Working Zones",
          type: "title-main"
        },
        {
          content: "IEEE Standard for Electrical Safety Practices in Electrolytic Cell Line Working Zones - Redline",
          type: "main"
        }
      ]
    end
  end

  it "normalized date" do
    expect(subject.bdate).to eq [
      { on: "1997-04-03", type: "created" },
      { on: "2019-04-26", type: "published" },
      { on: "1996-12-10", type: "issued" }
    ]
  end

  it "ISBN and DOI" do
    expect(subject.isbn_doi).to eq [
      { id: "978-0-7381-3142-9", type: "ISBN" },
      { id: "10.1109/IEEESTD.1997.3", type: "DOI" }
    ]
  end

  it "contributor name and address" do
    expect(subject.contrib_name_addr).to eq [
      "IEEE", [{ city: "New York", country: "USA", state: nil, street: [] }]
    ]
  end

  it "copyright" do
    expect(subject.copyright).to eq [[["IEEE"], "1997"]]
  end

  it "docstatus" do
    expect(subject.docstatus).to eq stage: "withdrawn"
  end

  it "link" do
    expect(subject.link).to eq ["https://ieeexplore.ieee.org/document/3"]
  end

  context "keyword" do
    let(:xml) { File.read("spec/fixtures/00035042.xml") }
    it do
      expect(subject.keyword).to eq ["Logic circuits", "Standards", "diagrams", "Logic functions"]
    end
  end

  it "ICS" do
    expect(subject.ics).to eq [{ code: "35.080", text: "Software" }]
  end

  it "editorial group" do
    expect(subject.editorialgroup).to eq [
      "Software &amp; Systems Engineering Standards Committee of the IEEE Computer Society"
    ]
  end

  it "standard modifier" do
    expect(subject.standard_modifier).to eq "Withdrawn"
  end

  context "document type" do
    it { expect(subject.doctype).to eq "standard" }

    context "redline" do
      let(:xml) { File.read("spec/fixtures/06658816.xml") }
      it { expect(subject.doctype).to eq "redline" }
    end
  end
end
