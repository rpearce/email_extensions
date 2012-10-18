# Email Extensions
Ever need to know all the extensions for organizational entities, such as universities?

We're putting that together for you.

## What is it?
This is a little API that accepts requests for a name and returns a JSON object containing an array of extensions.

## Example
    $ curl http://extensions.ridepost.com/api/university_of_south_carolina

## Example as AJAX
    $.ajax({
      type: 'get',
      url: 'http://extensions.ridepost.com/api/university_of_south_carolina',
      dataType: 'jsonp',
      success: function(data) {
         console.log(data);
      }
    });

### Notes
Before you get started with this on your own, you'll need to either set environment variables like this (on unix):

    $ export WHATEVER_YOUR_USER_VAR_IS=whateveruser

and make sure the variables in app.rb are the same.

If you put your own on Heroku, you'll need to do:

    $ heroku config:add WHATEVER_YOUR_USER_VAR_IS=whateveruser