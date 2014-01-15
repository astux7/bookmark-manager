To run: 
```ruby
> bundle
```
```ruby
> rake auto_migrate
```
```ruby
> shotgun -p 4545
```

// in browser localhost:4545


  519  heroku login
  520  heroku apps:create basta-bookmark
  532  heroku run rake auto_migrate
  533  heroku run rake auto_upgrade
  534  heroku logs
  536  heroku config
  537  heroku addons:add heroku-postgresql
  538  heroku pg:promote HEROKU_POSTGRESQL_BRONZE_URL
  539  git status
  540  git add .
  541  git commit -m "Add Heroku setup"
  542  git push origin master
  543  git push heroku master
  544  heroku config
  545  heroku run rake auto_migrate
  546  heroku logs
  552  heroku run rake auto_migrate
  554  git push heroku master
  555  heroku open
