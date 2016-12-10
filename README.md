# Ruby on Rails Tutorial sample application

1. Add _awesome_print_ and _rspec_ gems to _Gemfile_
1. Add `config.active_record.timestamped_migrations = false` to
   _config/enviroments/development_.
1. Initialize _rspec_ with `rspec --init`;
   see more on [rspec.info](http://rspec.info).


## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```


## ActiveRecord Associations
