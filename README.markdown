ResqueMailhopper
---

This project rocks and uses MIT-LICENSE.

[![Build Status](https://secure.travis-ci.org/linjunpop/resque_mailhopper.png)](http://travis-ci.org/linjunpop/resque_mailhopper)

Requirements
===

Rails 3.1+

Installation
===

Add to your project’s `Gemfile`:

```
gem 'resque_mailhopper'
```

Configure Mailhopper
===

```
$ rails generate mailhopper
$ rake db:migrate
```

Start a worker
===
```
$ QUEUE=mailer rake environment resque:work
```

References
===

Mailhopper: [github.com/cerebris/mailhopper](http://github.com/cerebris/mailhopper)

Resque: [github.com/defunkt/resque](https://github.com/defunkt/resque)

