
describe Link do
  it "returns add record to the database" do
    link = Link.new
    link.title = "link"
    link.url = "example.com"
    save_result = link.save

    expect(save_result).to eq true
    # expect(Link.count).to eq(1)
    expect(link.title).to eq "link"
  end
end
