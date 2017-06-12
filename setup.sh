psql -U postgres --file=setup.sql
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
