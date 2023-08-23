# README

## Notes


1) make schema.org the default @vocab
2) I notice a lot of source using schema:Dataset when that namespace is not defined
   this seems to be a GeoNode issue?  With @vocab there is can simply (must) be Dataset
3) expanding the ID to carry the property value in one example, this improves interop 
   by passing the schema used
4) Note, ohdsi:institution is a property connecting to a type in SDO, there will be semantic concerns here.  It is an odd property as it sounds more like a type?  I created a fake ohdsi property "funder" to see if I can play with equivs with schame:funder


orig code

```json
  "ohdsi:institution": {
    "@type": "Organization",
    "identifier": "https://ror.org/0ksfjgq98",
    "name": "Mumbas"
  },
  ```



Just a few notes on exploring this graph.

* my initial focus is on the topology vs the knowledge representation
* Since the @graph defines no @id these are all really in the default graph (if placed in a 
  triple store).   So just split them for now.
* Some initial frames and shapes might be useful for inspection
