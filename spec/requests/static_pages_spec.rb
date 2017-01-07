require 'spec_helper'

describe "Static pages" do

  subject { page }
# new-1 start
  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Sample App' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }
  end
# new-1 end
# old-1: must be delete    it { should have_content('Sample App') }
# old-1: must be delete    it { should have_title(full_title('')) }
# old-1: must be delete    it { should_not have_title('| Home') }
# old-1: must be delete  end

  describe "Help page" do
    before { visit help_path }
    let(:heading)    { 'Help' } #new-2
    let(:page_title) { 'Help' } #new-2-2

    it_should_behave_like "all static pages" #new-2
#old-2    it { should have_content('Help') }
#old-2    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }
    let(:heading)    { 'About' } #new-3
    let(:page_title) { 'About' } #new-3

    it_should_behave_like "all static pages" #new-3
#old-3    it { should have_content('About') }
#old-3    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:heading)    { 'Contact' } #new-4
    let(:page_title) { 'Contact' } #new-4

    it_should_behave_like "all static pages" #new-4
    # it { should have_content('Contact') }
#old-4    it { should have_selector('h1', text: 'Contact') }
#old-4    it { should have_title(full_title('Contact')) }
  end
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    click_link "Sign up now"
    expect(page).to have_title(full_title('Sign up'))
    click_link "sample app"
    expect(page).to have_title(full_title(''))
  end
end

