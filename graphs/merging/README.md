# Merging Graphs

## About

The question was raised, can we merge JSON-LD documents into one combined graph.

Due to the issue of blank nodes, this likely needs to be done using something like rdflib in python where I can 
allow those blank nodes by recasting them.  Otherwise, we need to skolemize them in some manner.  

Read the JSON-LD into rdflib and then pull it out and form back into JSON-LD with @graph?


