Doing it this way means you are loading the app directly from a custom boot script. I also specified a custom environment and Gemfile:

RAILS_ENV=lean_development BUNDLE_GEMFILE=LeanGemfile bundle exec script/lean