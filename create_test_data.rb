# seeds a CouchDB with some test feeds. run via: ruby create_test_data.rb

# change to your couch. admin username and password require if you're not in admin party
# e.g. YOURCOUCH = "admin:password@localhost:5984"
YOURCOUCH = "admin:admin@localhost:5984"

# for online testing
# a bunch of live NY Times feeds
# feeds = ["http://www.nytimes.com/services/xml/rss/nyt/GlobalHome.xml", "http://www.nytimes.com/services/xml/rss/nyt/HomePage.xml", "http://www.nytimes.com/services/xml/rss/nyt/World.xml", "http://www.nytimes.com/services/xml/rss/nyt/Africa.xml", "http://www.nytimes.com/services/xml/rss/nyt/Americas.xml", "http://www.nytimes.com/services/xml/rss/nyt/AsiaPacific.xml", "http://www.nytimes.com/services/xml/rss/nyt/Europe.xml", "http://www.nytimes.com/services/xml/rss/nyt/MiddleEast.xml", "http://www.nytimes.com/services/xml/rss/nyt/US.xml", "http://www.nytimes.com/services/xml/rss/nyt/Education.xml", "http://www.nytimes.com/services/xml/rss/nyt/Politics.xml", "http://www.nytimes.com/services/xml/rss/nyt/NYRegion.xml"]

feeds = ["http://auburn.craigslist.org/sss/index.rss", "http://bham.craigslist.org/sss/index.rss", "http://columbusga.craigslist.org/sss/index.rss", "http://dothan.craigslist.org/sss/index.rss", "http://shoals.craigslist.org/sss/index.rss", "http://gadsden.craigslist.org/sss/index.rss", "http://huntsville.craigslist.org/sss/index.rss", "http://mobile.craigslist.org/sss/index.rss", "http://montgomery.craigslist.org/sss/index.rss", "http://tuscaloosa.craigslist.org/sss/index.rss", "http://anchorage.craigslist.org/sss/index.rss", "http://flagstaff.craigslist.org/sss/index.rss", "http://mohave.craigslist.org/sss/index.rss", "http://phoenix.craigslist.org/sss/index.rss", "http://prescott.craigslist.org/sss/index.rss", "http://sierravista.craigslist.org/sss/index.rss", "http://tucson.craigslist.org/sss/index.rss", "http://yuma.craigslist.org/sss/index.rss", "http://fayar.craigslist.org/sss/index.rss", "http://fortsmith.craigslist.org/sss/index.rss", "http://jonesboro.craigslist.org/sss/index.rss", "http://littlerock.craigslist.org/sss/index.rss", "http://memphis.craigslist.org/sss/index.rss", "http://texarkana.craigslist.org/sss/index.rss", "http://sfbay.craigslist.org/sss/index.rss", "http://bakersfield.craigslist.org/sss/index.rss", "http://chico.craigslist.org/sss/index.rss", "http://fresno.craigslist.org/sss/index.rss", "http://goldcountry.craigslist.org/sss/index.rss", "http://humboldt.craigslist.org/sss/index.rss", "http://imperial.craigslist.org/sss/index.rss", "http://inlandempire.craigslist.org/sss/index.rss", "http://losangeles.craigslist.org/sss/index.rss", "http://mendocino.craigslist.org/sss/index.rss", "http://merced.craigslist.org/sss/index.rss", "http://modesto.craigslist.org/sss/index.rss", "http://monterey.craigslist.org/sss/index.rss", "http://orangecounty.craigslist.org/sss/index.rss", "http://palmsprings.craigslist.org/sss/index.rss", "http://redding.craigslist.org/sss/index.rss", "http://reno.craigslist.org/sss/index.rss", "http://sacramento.craigslist.org/sss/index.rss", "http://sandiego.craigslist.org/sss/index.rss", "http://slo.craigslist.org/sss/index.rss", "http://santabarbara.craigslist.org/sss/index.rss", "http://stockton.craigslist.org/sss/index.rss", "http://ventura.craigslist.org/sss/index.rss", "http://visalia.craigslist.org/sss/index.rss", "http://yubasutter.craigslist.org/sss/index.rss", "http://boulder.craigslist.org/sss/index.rss", "http://cosprings.craigslist.org/sss/index.rss", "http://denver.craigslist.org/sss/index.rss", "http://fortcollins.craigslist.org/sss/index.rss", "http://pueblo.craigslist.org/sss/index.rss", "http://rockies.craigslist.org/sss/index.rss", "http://westslope.craigslist.org/sss/index.rss", "http://newlondon.craigslist.org/sss/index.rss", "http://hartford.craigslist.org/sss/index.rss", "http://newhaven.craigslist.org/sss/index.rss", "http://nwct.craigslist.org/sss/index.rss", "http://delaware.craigslist.org/sss/index.rss", "http://washingtondc.craigslist.org/sss/index.rss", "http://daytona.craigslist.org/sss/index.rss", "http://keys.craigslist.org/sss/index.rss", "http://fortmyers.craigslist.org/sss/index.rss", "http://gainesville.craigslist.org/sss/index.rss", "http://jacksonville.craigslist.org/sss/index.rss", "http://lakeland.craigslist.org/sss/index.rss", "http://ocala.craigslist.org/sss/index.rss", "http://orlando.craigslist.org/sss/index.rss", "http://panamacity.craigslist.org/sss/index.rss", "http://pensacola.craigslist.org/sss/index.rss", "http://sarasota.craigslist.org/sss/index.rss", "http://miami.craigslist.org/sss/index.rss", "http://spacecoast.craigslist.org/sss/index.rss", "http://staugustine.craigslist.org/sss/index.rss", "http://tallahassee.craigslist.org/sss/index.rss", "http://tampa.craigslist.org/sss/index.rss", "http://treasure.craigslist.org/sss/index.rss", "http://athensga.craigslist.org/sss/index.rss", "http://atlanta.craigslist.org/sss/index.rss", "http://augusta.craigslist.org/sss/index.rss", "http://brunswick.craigslist.org/sss/index.rss", "http://columbusga.craigslist.org/sss/index.rss", "http://macon.craigslist.org/sss/index.rss", "http://savannah.craigslist.org/sss/index.rss", "http://valdosta.craigslist.org/sss/index.rss", "http://honolulu.craigslist.org/sss/index.rss", "http://boise.craigslist.org/sss/index.rss", "http://eastidaho.craigslist.org/sss/index.rss", "http://pullman.craigslist.org/sss/index.rss", "http://spokane.craigslist.org/sss/index.rss", "http://twinfalls.craigslist.org/sss/index.rss", "http://bn.craigslist.org/sss/index.rss", "http://carbondale.craigslist.org/sss/index.rss", "http://chambana.craigslist.org/sss/index.rss", "http://chicago.craigslist.org/sss/index.rss", "http://decatur.craigslist.org/sss/index.rss", "http://peoria.craigslist.org/sss/index.rss", "http://quadcities.craigslist.org/sss/index.rss", "http://rockford.craigslist.org/sss/index.rss", "http://springfieldil.craigslist.org/sss/index.rss", "http://stlouis.craigslist.org/sss/index.rss", "http://bloomington.craigslist.org/sss/index.rss", "http://evansville.craigslist.org/sss/index.rss", "http://fortwayne.craigslist.org/sss/index.rss", "http://indianapolis.craigslist.org/sss/index.rss", "http://tippecanoe.craigslist.org/sss/index.rss", "http://muncie.craigslist.org/sss/index.rss", "http://southbend.craigslist.org/sss/index.rss", "http://terrahaute.craigslist.org/sss/index.rss", "http://ames.craigslist.org/sss/index.rss", "http://cedarrapids.craigslist.org/sss/index.rss", "http://desmoines.craigslist.org/sss/index.rss", "http://dubuque.craigslist.org/sss/index.rss", "http://iowacity.craigslist.org/sss/index.rss", "http://omaha.craigslist.org/sss/index.rss", "http://quadcities.craigslist.org/sss/index.rss", "http://siouxcity.craigslist.org/sss/index.rss", "http://waterloo.craigslist.org/sss/index.rss", "http://kansascity.craigslist.org/sss/index.rss", "http://lawrence.craigslist.org/sss/index.rss", "http://ksu.craigslist.org/sss/index.rss", "http://topeka.craigslist.org/sss/index.rss", "http://wichita.craigslist.org/sss/index.rss", "http://bgky.craigslist.org/sss/index.rss", "http://cincinnati.craigslist.org/sss/index.rss", "http://huntington.craigslist.org/sss/index.rss", "http://lexington.craigslist.org/sss/index.rss", "http://louisville.craigslist.org/sss/index.rss", "http://westky.craigslist.org/sss/index.rss", "http://batonrouge.craigslist.org/sss/index.rss", "http://lafayette.craigslist.org/sss/index.rss", "http://lakecharles.craigslist.org/sss/index.rss", "http://monroe.craigslist.org/sss/index.rss", "http://neworleans.craigslist.org/sss/index.rss", "http://shreveport.craigslist.org/sss/index.rss", "http://maine.craigslist.org/sss/index.rss", "http://annapolis.craigslist.org/sss/index.rss", "http://baltimore.craigslist.org/sss/index.rss", "http://easternshore.craigslist.org/sss/index.rss", "http://smd.craigslist.org/sss/index.rss", "http://westmd.craigslist.org/sss/index.rss", "http://boston.craigslist.org/sss/index.rss", "http://capecod.craigslist.org/sss/index.rss", "http://southcoast.craigslist.org/sss/index.rss", "http://westernmass.craigslist.org/sss/index.rss", "http://worcester.craigslist.org/sss/index.rss", "http://annarbor.craigslist.org/sss/index.rss", "http://centralmich.craigslist.org/sss/index.rss", "http://detroit.craigslist.org/sss/index.rss", "http://flint.craigslist.org/sss/index.rss", "http://grandrapids.craigslist.org/sss/index.rss", "http://jxn.craigslist.org/sss/index.rss", "http://kalamazoo.craigslist.org/sss/index.rss", "http://lansing.craigslist.org/sss/index.rss", "http://muskegon.craigslist.org/sss/index.rss", "http://nmi.craigslist.org/sss/index.rss", "http://porthuron.craigslist.org/sss/index.rss", "http://saginaw.craigslist.org/sss/index.rss", "http://southbend.craigslist.org/sss/index.rss", "http://swmi.craigslist.org/sss/index.rss", "http://up.craigslist.org/sss/index.rss", "http://duluth.craigslist.org/sss/index.rss", "http://fargo.craigslist.org/sss/index.rss", "http://mankato.craigslist.org/sss/index.rss", "http://minneapolis.craigslist.org/sss/index.rss", "http://rmn.craigslist.org/sss/index.rss", "http://stcloud.craigslist.org/sss/index.rss", "http://gulfport.craigslist.org/sss/index.rss", "http://hattiesburg.craigslist.org/sss/index.rss", "http://jackson.craigslist.org/sss/index.rss", "http://memphis.craigslist.org/sss/index.rss", "http://northmiss.craigslist.org/sss/index.rss", "http://columbiamo.craigslist.org/sss/index.rss", "http://joplin.craigslist.org/sss/index.rss", "http://kansascity.craigslist.org/sss/index.rss", "http://semo.craigslist.org/sss/index.rss", "http://springfield.craigslist.org/sss/index.rss", "http://stlouis.craigslist.org/sss/index.rss", "http://montana.craigslist.org/sss/index.rss", "http://grandisland.craigslist.org/sss/index.rss", "http://lincoln.craigslist.org/sss/index.rss", "http://omaha.craigslist.org/sss/index.rss", "http://siouxcity.craigslist.org/sss/index.rss", "http://lasvegas.craigslist.org/sss/index.rss", "http://reno.craigslist.org/sss/index.rss", "http://nh.craigslist.org/sss/index.rss", "http://cnj.craigslist.org/sss/index.rss", "http://jerseyshore.craigslist.org/sss/index.rss", "http://newjersey.craigslist.org/sss/index.rss", "http://southjersey.craigslist.org/sss/index.rss", "http://albuquerque.craigslist.org/sss/index.rss", "http://farmington.craigslist.org/sss/index.rss", "http://lascruces.craigslist.org/sss/index.rss", "http://roswell.craigslist.org/sss/index.rss", "http://santafe.craigslist.org/sss/index.rss", "http://albany.craigslist.org/sss/index.rss", "http://binghamton.craigslist.org/sss/index.rss", "http://buffalo.craigslist.org/sss/index.rss", "http://catskills.craigslist.org/sss/index.rss", "http://chautauqua.craigslist.org/sss/index.rss", "http://elmira.craigslist.org/sss/index.rss", "http://hudsonvalley.craigslist.org/sss/index.rss", "http://ithaca.craigslist.org/sss/index.rss", "http://longisland.craigslist.org/sss/index.rss", "http://newyork.craigslist.org/sss/index.rss", "http://plattsburgh.craigslist.org/sss/index.rss", "http://rochester.craigslist.org/sss/index.rss", "http://syracuse.craigslist.org/sss/index.rss", "http://utica.craigslist.org/sss/index.rss", "http://watertown.craigslist.org/sss/index.rss", "http://asheville.craigslist.org/sss/index.rss", "http://boone.craigslist.org/sss/index.rss", "http://charlotte.craigslist.org/sss/index.rss", "http://eastnc.craigslist.org/sss/index.rss", "http://fayetteville.craigslist.org/sss/index.rss", "http://greensboro.craigslist.org/sss/index.rss", "http://hickory.craigslist.org/sss/index.rss", "http://outerbanks.craigslist.org/sss/index.rss", "http://raleigh.craigslist.org/sss/index.rss", "http://wilmington.craigslist.org/sss/index.rss", "http://winstonsalem.craigslist.org/sss/index.rss", "http://fargo.craigslist.org/sss/index.rss", "http://nd.craigslist.org/sss/index.rss", "http://akroncanton.craigslist.org/sss/index.rss", "http://athensohio.craigslist.org/sss/index.rss", "http://cincinnati.craigslist.org/sss/index.rss", "http://cleveland.craigslist.org/sss/index.rss", "http://columbus.craigslist.org/sss/index.rss", "http://dayton.craigslist.org/sss/index.rss", "http://huntington.craigslist.org/sss/index.rss", "http://limaohio.craigslist.org/sss/index.rss", "http://mansfield.craigslist.org/sss/index.rss", "http://parkersburg.craigslist.org/sss/index.rss", "http://sandusky.craigslist.org/sss/index.rss", "http://toledo.craigslist.org/sss/index.rss", "http://wheeling.craigslist.org/sss/index.rss", "http://youngstown.craigslist.org/sss/index.rss", "http://fortsmith.craigslist.org/sss/index.rss", "http://lawton.craigslist.org/sss/index.rss", "http://oklahomacity.craigslist.org/sss/index.rss", "http://stillwater.craigslist.org/sss/index.rss", "http://tulsa.craigslist.org/sss/index.rss"]

# for offline testing -- place the 'test_feeds' folder in a local 
# webserver such that: http://localhost/test_feeds is accessible
# feeds = ['http://localhost/test_feeds/atom_namespace.xml', 'http://localhost/test_feeds/bad_feed.xml', 'http://localhost/test_feeds/no_xml_header.xml', 'http://localhost/test_feeds/rss2_only_title.xml', 'http://localhost/test_feeds/sampleRss091.xml', 'http://localhost/test_feeds/atom_no_id.xml', 'http://localhost/test_feeds/cdata_test.xml', 'http://localhost/test_feeds/parsing.xml', 'http://localhost/test_feeds/rss2sample.xml', 'http://localhost/test_feeds/sampleRss092.xml', 'http://localhost/test_feeds/attribute_escaping.xml', 'http://localhost/test_feeds/entity_escaping.xml', 'http://localhost/test_feeds/rdf_10_weirdness.xml', 'http://localhost/test_feeds/rss_no_link.xml', 'http://localhost/test_feeds/whitespace_id.xml', 'http://localhost/test_feeds/bad_atom_feed.xml', 'http://localhost/test_feeds/missing_entry_id.xml', 'http://localhost/test_feeds/rss2_only_link.xml', 'http://localhost/test_feeds/rss_rdf.xml', 'http://localhost/test_feeds/xhtml_entities.xml'];

# create the necessary storage databases
puts %x!curl -X PUT http://#{YOURCOUCH}/feeds -H "Content-type":"application/json"!
puts %x!curl -X PUT http://#{YOURCOUCH}/articles -H "Content-type":"application/json"!

# make a feed entry in couch for each feed
feeds.each {|feed| puts %x!curl -X POST http://#{YOURCOUCH}/feeds -d '{"feed": "#{feed}", "db": "articles"}' -H "Content-type":"application/json"!}