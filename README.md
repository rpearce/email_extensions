# Email Extensions
Ever need to know all the extensions for organizational entities, such as universities?

We're putting that together for you.

## What is it?
This is a little API that accepts AJAX requests and returns a JSON object containing an array of extensions.

## Example
    $ curl http://extensions.ridepost.com/api/university_of_south_carolina

## Example as AJAX
    $.getJSON('http://extensions.ridepost.com/api/university_of_south_carolina', function(data) {
      console.log(data);
    });