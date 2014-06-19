# Golden::Datetimepicker

Integrate datetime pickers with Rails asset pipeline.

## Installation

Add this line to your application's Gemfile:

    gem 'golden-datetimepicker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install golden-datetimepicker

## Usage

### jQuery Timepicker Addon

Add to your `app/assets/javascripts/application.js`

``` js
//= require jquery-timepicker-addon
//= require jquery.ui.datepicker-zh-TW
//= require jquery-timepicker-addon/i18n/jquery-ui-timepicker-zh-TW
```

Add to your `app/assets/stylesheets/application.css`

``` css
*= require jquery-timepicker-addon
```

Enable with your `datetime.js.coffee`

``` coffee
$ ->
  $('.datepicker').datepicker
    dateFormat: 'yy-mm-dd'
    changeMonth: true
    changeYear: true

  $('.timepicker').timepicker(
    timeFormat: 'HH:mm:ss z'
    hourGrid: 4
    minuteGrid: 10
    secondGrid: 10
    showSecond: true
    showTimezone: true
  ).click ->
    default_time = new Date($(this).val())
    $(this).timepicker 'setDate', default_time

  $('.datetimepicker').datetimepicker(
    dateFormat: 'yy-mm-dd'
    timeFormat: 'HH:mm:ss z'
    hourGrid: 4
    minuteGrid: 10
    secondGrid: 10
    showSecond: true
    showTimezone: true
  ).click ->
    default_date = new Date($(this).val())
    $(this).datetimepicker 'setDate', default_date
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/golden-datetimepicker/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
