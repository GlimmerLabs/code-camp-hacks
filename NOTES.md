Notes on automating the URL extraction process
==============================================

Programs
--------

`makeurl` - Given a location (e.g., 'Boston,Massachusetts,United States')
and search terms (e.g. '"Middle School" summer code camp"), generates a
URL for a location-based Google search.

`fetchdata` - Given a location and search terms (as in `makeurl`), fetches
the data and saves in an appropriately-named file.

Workflow for Fetching Data
--------------------------

* For each location/terms pair, call `fetchdata`.  We now have a 
  bunch of files.
* Extract unique URLs from those files.  (We can also gather other data.)
* For each unique URL, fetch the page, probably using `wget`.
* Look at the contents.

Other Comments
--------------

It appears that we get slightly different results from Google
depending on which browser we use to fetch the page.  In particular,
Lynx does not seem to include ads, while a simulated Firefox (using
curl --user-agent) does include ads.  Utterly fascinating.  The
HTML that Google provides for each is also very different, which
makes the "extract URLs" task a bit harder.  Fortunately, the main
search results seem to be identical.

An alternative mechanism for setting location can be found at
https://gofishdigital.com/google-results-change-location/.
