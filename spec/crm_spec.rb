require 'crm'
require_relative '../test_data'

describe CRM do
  it "parses hash based information" do
    crm = CRM.new({person: "Cory"})
    actual = crm.data
    expected = {person: "Cory"}
    expect(actual).to eq expected
  end

  it "returns array of companies and people who work for them" do
    crm = CRM.new(TEST_CRM)
    actual = crm.company_roster

    expect(actual[1][:name]).to eq "IRS"
    expect(actual[0][:employees][0][:last_name]).to eq "Doe"
  end
end