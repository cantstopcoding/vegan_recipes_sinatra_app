require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

# in order to PATCH and DELETE requests
use Rack::MethodOverride

use UsersController
run ApplicationController
