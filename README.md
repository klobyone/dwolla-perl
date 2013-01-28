dwolla-perl - Perl module to access the Dwolla OAuth+REST API
===========

NOTE: This module is in the very early stages. Do not use this for anything but testing.

## Version

0.1

## Requrements (Module Dependcies)

* LWP::UserAgent
* Net::SSLeay
* Digest::HMAC_SHA1
* URI::Escape
* Data::Dumper
* IO::File
* JSON
* CGI (For examples)

## Installation

The easiest way to install this module is via the CPAN command-line interface.

`cpan> install DwollaRestClient`

It also be can obtained from [here](http://search.cpan.org/~klobyone/). If done
this way you will have to resolve the dependecies yourself.

## Examples / Quickstart

This repo includes various usage examples, including:

* Authenticating with OAuth [oauth.cgi]
* Register a new Dwolla account [register.pl]
* Sending money [send.pl]
* Request money [request.pl]
* Transaction listings [listings.pl]
* Fetching account information [account_info.pl]
* Grabbing a user's contacts [contacts.pl]
* Listing a user's funding sources [funding_sources.pl]
* Creating offsite gateway sessions [gateway.cgi]
* Webhook notifications [webhook.cgi]

## Changelog

0.1

* Initial version.

## Credits

- Chris Kloberdanz &lt;klobyone@gmail.com&gt;

## Support

- Chris Kloberdanz &lt;klobyone@gmail.com&gt;

## License 

(The MIT License)

Copyright (c) 2013 Chris Kloberdanz &lt;klobyone@gmail.com&gt;

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
