sitemap:
	rm -f sitemaps/*.txt
	rm -f sitemaps/*.xml
	./bin/wof-mk-sitemaps -s ./sitemaps -u https://mapzen.com/places/ -H $(HOST) -p 9200 -i whosonfirst
	./bin/wof-mk-sitemaps-index -s ./sitemaps -u https://mapzen.com/places/sitemaps -o ./sitemaps/index.xml
