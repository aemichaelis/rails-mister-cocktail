require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
# require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsMisterCocktail
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Don't generate system test files.
    config.generators.system_tests = nil
  end
end

# rails generate model Ingredients name:string

# rails generate model Doses description:string cocktail_id:integer ingredient_id:integer

# rails generate model Cocktail name:text



# class Ingredient < ApplicationRecord
#   validates :name, presence: true, uniqueness: true

#   has_many :doses
#   has_many :cocktails, through: :doses
# end

# class Dose < ApplicationRecord
#   belongs_to :cocktail
#   belongs_to :ingredient

#   validates :description, presence: true
#   validates :cocktail_id, uniqueness: { scope: :ingredient_id }
# end

# # class Cocktail < ApplicationRecord
#   has_many :doses, dependent: :destroy
#   has_many :ingredients, through: :doses

#   validates :name, presence: true, uniqueness: true
# end

