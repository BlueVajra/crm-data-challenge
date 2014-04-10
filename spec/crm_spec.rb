require 'crm'

describe CRM do
  it "parses hash based information" do

    crm = CRM.new({person: "Cory"})

    actual = crm.data
    expected = {person: "Cory"}

    expect(actual).to eq expected
  end
end