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

Add `datetime.css.sass`

``` sass
//= require jquery-timepicker-addon

.ui-datepicker
  z-index: 999999 !important
  select
    &.ui-datepicker-month,
    &.ui-datepicker-year
      width: auto
      margin: 0 5px
```

Require it in your `app/assets/stylesheets/application.css`

``` css
*= require datetime
```

Add `datetime.js.coffee`

``` coffee
#= require jquery-timepicker-addon
#= require jquery.ui.datepicker-zh-TW
#= require jquery-timepicker-addon/i18n/jquery-ui-timepicker-zh-TW

$ ->
  $('body')
    .on 'click', '.datepicker:not(.hasDatepicker)', ->
      $(this).datepicker
        dateFormat: 'yy-mm-dd'
        changeMonth: true
        changeYear: true
      default_date = new Date($(this).val())
      $(this).datepicker 'setDate', default_date
      $(this).datepicker 'show'

    .on 'click', '.timepicker:not(.hasDatepicker)', ->
      $(this).timepicker
        timeFormat: 'HH:mm:ss z'
        hourGrid: 4
        minuteGrid: 10
        secondGrid: 10
        showSecond: true
        showTimezone: true
      default_date = new Date($(this).val())
      $(this).timepicker 'setDate', default_date
      $(this).timepicker 'show'

    .on 'click', '.datetimepicker:not(.hasDatepicker)', ->
      $(this).datetimepicker
        dateFormat: 'yy-mm-dd'
        timeFormat: 'HH:mm:ss z'
        hourGrid: 4
        minuteGrid: 10
        secondGrid: 10
        showSecond: true
        showTimezone: true
      default_date = new Date($(this).val())
      $(this).datetimepicker 'setDate', default_date
      $(this).datetimepicker 'show'
```

Require it in your `app/assets/javascripts/application.js`

``` js
//= require datetime
```

Set class in your input field and show as localtime.

``` ruby
<%= f.input :available_at,
  as: :string,
  input_html: {
    value: f.object.available_at.try(:localtime),
    class: 'datetimepicker'
  } %>
```
Here uses [simple_form](https://github.com/plataformatec/simple_form) as form builder.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/golden-datetimepicker/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
