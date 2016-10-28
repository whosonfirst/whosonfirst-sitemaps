# whosonfirst-sitemaps

Tools for generating Who's On First sitemaps.

## Tools

### wof-mk-sitemaps

$> wof-mk-sitemaps -s ../sitemaps/ -u https://whosonfirst.mapzen.com/spelunker/sitemaps/ -H localhost -p 9200 -i whosonfirst

### wof-mk-sitemaps-index

```
$> wof-mk-sitemaps-index -s ../sitemaps/ -u https://whosonfirst.mapzen.com/spelunker/sitemaps/
```

## Example

```
rm -f sitemaps/*.txt
rm -f sitemaps/*.xml
./bin/wof-mk-sitemaps -s ./sitemaps -u https://mapzen.com/places/ -H $(HOST) -p 9200 -i whosonfirst
./bin/wof-mk-sitemaps-index -s ./sitemaps -u https://mapzen.com/places/sitemaps -o ./sitemaps/index.xml
```