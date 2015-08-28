EECS Cabal @ CWRU
======================================

The EECS "Cabal" is a collection of student organizations in the Department of
Electrical Engineering & Computer Science (EECS) at Case Western Reserve
University.

Traditionally, the student groups have worked closely together to plan events
and improve student life. [This website](http://acm.case.edu/) unifies all EECS
Cabal groups (namely ACM, IEEE, and Hacker Society) under one umbrella.

The Only Limitation Is Yourself...
--------------------------------------
This is _your_ website. [Fork it](https://help.github.com/articles/fork-a-repo)
and submit any changes you'd like as a pull request. The maintainers will
review your request and open a dialogue with you about your code.

Instructions
--------------------------------------
1. Install a Ruby environment. We recommend using [RVM](https://rvm.io/).
2. Install and activate Ruby 2.2.1. With rvm, run `rvm install 2.2.3` and
   `rvm use 2.2.3`. Consider setting it as default with
   `rvm --default use 2.2.3`.
3. When you've got that all squared-away, [fork this
   repository](https://github.com/cwruacm/acm.case.edu/fork). From your fork,
   clone to your computer and navigate your terminal to the new clone.
4. With the correct version of Ruby active, install this application's
   dependencies with `gem install bundler`, and then `bundle install`.
5. Run the application with the command `shotgun`. Press `Ctrl-C` to stop
   serving this site on the local web server.
6. Navigate to the application at
   [http://localhost:9393](http://localhost:9393) (it may help to copy-paste
   the link into your address bar if your browser has a security block).

Deploy Requirements/Process
--------------------------------------
Once you pull the file run the following commands in the main directory of the project
```
docker build --tag="acmcom" .
docker run -d -p 8080:80 acmcom
```
You can then access the website from the containers IP address at port 8080
Note that this will run the production version of the container using unicorn and not shotgun.
