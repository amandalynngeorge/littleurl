require 'rails_helper'

RSpec.describe "shorten_urls/show", type: :view do
  before(:each) do
    @shorten_url = assign(:shorten_url, ShortenUrl.create!(
      :original_url => "MyText",
      :short_url => "Short Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Short Url/)
  end
end
