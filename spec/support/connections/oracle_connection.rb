puts "Using native Oracle"
require "active_record"
require 'logger'

ENV['ADAPTER'] = 'oracle'

# Prepend oracle_enhanced local development directory in front of load path
ENV['ORACLE_ENHANCED_PATH'] ||= File.expand_path('../../../../../oracle-enhanced', __FILE__)
$LOAD_PATH.unshift File.join(ENV['ORACLE_ENHANCED_PATH'], 'lib')
require 'active_record/connection_adapters/oracle_enhanced_adapter'

ActiveRecord::Base.configurations = {
  'unit' => {
    :adapter  => 'oracle_enhanced',
    :username => 'arel_unit',
    :password => 'arel_unit',
    :database => 'orcl',
  }
}
