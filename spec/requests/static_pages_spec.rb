require 'spec_helper'

describe "Static pages" do

	subject {page}

	describe "Home page" do
		before { visit root_path }
		it { should have_selector('h1', :text => "Sample App") }
		it { should have_selector('title', text: "Ruby on Rails Sample App")}
		it {should_not have_selector 'title', text: '| Home'}
		end

		it "should have the right title" do  			
  			page.should have_selector('title',
                :text => "Ruby on Rails Tutorial Sample App")
		end

		it "should not have a custom page title" do      		
      		page.should_not have_selector('title', 
      			:text => '| Home')
    	end
	end

	describe "Help page" do
		it "should have the content 'Help' " do
			visit help_path
			page.should have_selector('h1',
				:text => 'Help')
		end
		it "should have the right title" do
			visit help_path
			page.should have_selector('title',
				:text => "| Help")
		end
	end

	describe "About page" do
		it "should have the content 'About Us' " do
			visit about_path
			page.should have_selector('h1',
				:text => "About Us")
		end
		it "should have the right title" do
			visit about_path
			page.should have_selector('title',
				:text => "| About Us")
		end
	end

	describe "Contact" do
		it "should have the content 'Contact Us' " do
			visit contact_path
			page.should have_selector('h1',
				text: "Contact Us")
		end
		it "should have the right title" do
			visit contact_path
			page.should have_selector('title',
				text: "| Contact Us")
		end
	end
end
