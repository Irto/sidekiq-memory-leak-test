require 'objspace'
ObjectSpace.trace_object_allocations_start

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
