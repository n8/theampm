theampm
===========

With theampm, write Time like this in Ruby: 

```
1.am
=> 2013-10-08 01:00:00 -0500

130.am
=> 2013-10-08 01:30:00 -0500

4.pm
=> 2013-10-08 16:00:00 -0500

925.pm
=> 2013-10-08 21:25:00 -0500

# There's also a to_time method
1515.to_time
=> 2013-10-08 15:15:00 -0500
```

This code is so simple I debated even creating a gem for it, but I find myself using it repeatedly for new projects, and now again for [Draft](http://draftin.com), an app to help people [write better](http://draftin.com).


Installation
------------

1. Add `gem 'theampm'` to your Gemfile.
2. Run `bundle install`.
3. Restart your server


Feedback
--------
[Source code available on Github](https://github.com/n8/theampm). Feedback and pull requests are greatly appreciated.  Let me know if I can improve this.


P.S. [**I'd love to meet you on Twitter: here**](http://twitter.com/natekontny). 
