require 'rails_helper'

RSpec.describe "Static Pages", type: :request do

  let(:base_title){"Ruby on Rails Tutorial Sample App"}

  subject { page }

  describe "Home page" do
    before{ visit root_path }

    it { should have_content("Sample App") }
    it { should have_title("#{base_title}") }
    it { should_not have_title("| Home") }

  end

  describe "Help page" do
    before { visit help_path }

    it { should have_title("#{base_title} | Help") }
    it { should have_content("Help") }

  end

  describe "About page" do
    before { visit about_path }

    it { should have_title("#{base_title} | About") }
    it { should have_content("About Us") }

  end

  describe "ContactPage" do
    before { visit contact_path }
    it { should have_content('Contact') }
    it { should have_title("#{base_title} | Contact") }
  end

end
