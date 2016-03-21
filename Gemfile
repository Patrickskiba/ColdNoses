source 'https://rubygems.org'
ruby '2.3.0'
gem 'rails', '>= 5.0.0.beta1.1', '< 5.1'
gem 'pg'
gem 'uglifier', '>= 1.3.0'
gem 'bower-rails'
gem 'coffee-rails', '~> 4.1.0'
gem "devise", :github => 'plataformatec/devise', :branch => 'master'
gem "omniauth"
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'json'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'sass-rails', '>= 3.2'
gem 'gibbon'
gem 'haml', '~> 4.0', '>= 4.0.7'
gem 'html2haml'
gem 'fullcalendar-rails'
gem 'momentjs-rails'
gem 'activeadmin', github: 'activeadmin'
gem 'formtastic', github: 'justinfrench/formtastic'
gem 'carrierwave', :github => 'satoruk/carrierwave' , :ref => '43179f94d6a4e62f69e812f5082d6447c9138480'
#gem 'rmagick', require: false
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'
gem 'simple_form'

# gem 'bcrypt', '~> 3.1.7'
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'binding_of_caller'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 3.0'
  gem 'better_errors'
  gem 'spring'
  gem 'rails_layout'

end
group :production do

  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "puma"