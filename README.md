Lucidly: A Dream Journal
===========
[![Code Climate](https://codeclimate.com/github/cpursley/Lucidly.png)](https://codeclimate.com/github/cpursley/Lucidly)

<center>![lucid dream](http://nidradreaming.com/files/2012/12/things-to-do-in-lucid-dream.jpg)</center>

<center><small>*Image credit: [nidradreaming.com](http://nidradreaming.com/best-things-to-do-in-lucid-dream/)*</small></center>

### What

A place to record and publish your lucid dreams.

### Where

Live at: [http://lucidly.herokuapp.com/](http://lucidly.herokuapp.com/)

### Technology

* Ruby on Rails 3.2.8
* PostgreSQL
* Heroku
* CoffeeScript
* Twitter Bootstrap (custom theme)
* Simple Form
* Acts as Taggable
* Active Record Reputation System
* Devise

### Contributors

* [Chase Pursley](http://github.com/cpursley) ~ (repo/app creator)
* [Al Snow](https://github.com/jasnow) ~ (snow-ize and several issues)
* [Ho-Sheng Hsiao](https://github.com/hosh) ~ (scope refactor recommendations)

### Getting started

Before using lucidly you will need Git, Ruby, Rails & PostgreSQL installed.

```
git clone git@github.com:cpursley/Lucidly.git
cd lucidly
bundle install
rake db:setup
--or--
rake db:create
rake db:migrate
rake db:seed
-- --
rails server
```
Open [http://localhost:3000](http://localhost:3000) in your browser.

### License

The MIT License (MIT)

Copyright (c) 2013 Chase Pursley (http://www.chasepursley.com/)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.