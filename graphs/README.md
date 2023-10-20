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
  }
  ```

## Voc References


| URL                                                                               | comments |
|-----------------------------------------------------------------------------------| --- |
| [schema](http://schema.org/)                                                      | redirects to https://schema.org and follows domain redirection rules for this namespace |
| [study](https://covid19.ohdsi.app/study/)                                         | domain does not resolve |
| [owl](http://www.w3.org/2002/07/owl#)                                             | Valid |
| [person](https://covid19.ohdsi.app/author/)                                       | domain does not resolve |
| [snomed](http://snomed.info/id/)                                                  | bad url form? |
| [concept](http://data.ohdsi.org/concept/)                                         | 404 HTML |
| [xsd](http://www.w3.org/2001/XMLSchema#)                                          | Valid |
| [ohdsi](http://data.ohdsi.org/)                                                   | HTML based vocabulary representation? |
| [funder](ohdsi:institution)                                                       | invalid |
| [Organization](ohdsi:Organization)                                                | invalid |
| [covid19](https://covid19.ohdsi.app/)                                             | domain does not resolve |
| [aphrc](https://aphrc.org/)                                                       | HTML page |

[schema.org https context](https://schema.org/version/latest/schemaorg-current-https.jsonld)

## Making Equivalent Classes

If want to leverage the context to make the equivalent classes between two
vocabulary we may need to consider something like the following.

```json
{
  "@context": {
    "vocabA": "http://example.com/vocabA#",
    "vocabB": "http://example.com/vocabB#",
    "owl": "http://www.w3.org/2002/07/owl#",
    "equivalentClass": { "@id": "owl:equivalentClass", "@type": "@id" }
  },
  "@graph": [
  {
    "@id": "vocabA:ClassA",
    "@type": "owl:Class",
    "rdfs:label": "Class A"
  },
  {
    "@id": "vocabB:ClassB",
    "@type": "owl:Class",
    "rdfs:label": "Class B"
  },
  {
    "@id": "vocabA:ClassA",
    "equivalentClass": "vocabB:ClassB"
  }
  ]
}
```

Just a few notes on exploring this graph.

* my initial focus is on the topology vs the knowledge representation
* Since the @graph defines no @id these are all really in the default graph (if placed in a 
  triple store).   So just split them for now.
* Some initial frames and shapes might be useful for inspection


## References

* [ELFIE JSON-LD Context Files](https://opengeospatial.github.io/ELFIE/json-ld/)
* [JSON-LD 1.1](https://w3c.github.io/json-ld-syntax/)
* [JSON-LD 1.1 A JSON-based Serialization for Linked Data](https://www.w3.org/TR/json-ld/#the-context)
* [Data on the Web Best Practices](https://www.w3.org/TR/dwbp/)
* [JSON-LD Best Practices](https://w3c.github.io/json-ld-bp/)
* [RDFa Core Initial Context, JSON-LD Recommended Context](https://github.com/w3c/json-ld-rc/)
* [Second Environmental Linked Features Experiment](https://docs.ogc.org/per/20-067.html)
* [RDFlib endpoint](https://github.com/vemonet/rdflib-endpoint)
* [Graph notebook](https://github.com/aws/graph-notebook)


## Working environment

* Graph Explorer (note must run on 80 and 443 for podman you will likeyly need to allow this with: sudo sysctl net.ipv4.ip_unprivileged_port_start=80
* oxygraph as the server, can run as docker or via cargo, see: https://crates.io/crates/oxigraph_server#installation
* load script that leverages jdonld to pipe in the results
* podman run --group-add keep-groups --privileged --rm -v $PWD/data:/data -p 7878:7878 ghcr.io/oxigraph/oxigraph --location /data serve --bind 0.0.0.0:7878  


### Graph Notebook

* enter your virtual env
* python -m graph_notebook.start_jupyterlab --jupyter-dir  .

### oxigraph

