require 'spec_helper'

describe "StaticPages" do

  subject { page }
  describe "Home page" do
    before { visit root_path }

    it "should have the content 'Sample App'" do
      page.should have_selector('h1', :text => 'Welcome to the Sample App')
    end
    
    it "should have the title 'Home Page'" do
      page.should have_selector('title', :text => 'Home Page')
    end
  end

  describe "Help page" do
    before { visit help_path }

    it "should have content 'Help'" do
      page.should have_selector('h1', :text => 'Help')
    end
   
    it "should have the title 'Help Page'" do
      page.should have_selector('title', :text => 'Help Page')
    end
  end

  describe "About page" do
    before { visit about_path }

    it "should have content 'About Us'" do
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Page'" do
      page.should have_selector('title', :text => 'About Page')
    end
  end

  describe "Contact page" do
    before { visit contact_path }

    it "should have content 'Contact'" do
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact Page'" do
      page.should have_selector('title', :text => 'Contact Page')
    end
  end

  describe "for signed-in users" do
    let(:user) { FactoryGirl.create(:user) }
    before do
      FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
      FactoryGirl.create(:micropost, user: user, content: "Dolor sit amet")
      sign_in user
      visit root_path
    end

    it "should render the user's feed" do
      user.feed.each do |item|
        page.should have_selector("li##{item.id}", text: item.content)
      end
    end
  end
end
