source :rubygems

gem "activerecord", :path => ENV["RAILS_SOURCE"] || 'vendor/rails'
gem "diff-lcs"
gem "mysql"
gem "pg"
gem "rake"
gem "rspec"
gem "sqlite3-ruby"

# gems that are necessary for tests with Oracle database
if ENV['ORACLE_ENHANCED_PATH'] || ENV['ORACLE_ENHANCED']
  platforms :ruby do
    gem 'ruby-oci8', ">= 2.0.4"
  end
  if ENV['ORACLE_ENHANCED_PATH']
    gem 'activerecord-oracle_enhanced-adapter', :path => ENV['ORACLE_ENHANCED_PATH']
  else
    gem "activerecord-oracle_enhanced-adapter", :git => "git://github.com/rsim/oracle-enhanced.git"
  end
end
