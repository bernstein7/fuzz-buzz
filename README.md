bundle exec shotgun --server=thin --port=3000 config.ru
ruby -Ilib:test specs/services/answers_service_spec.rb