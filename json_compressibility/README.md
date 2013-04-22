JSON Compressibility Shootout
=============================

### Specific Compressibility Test

Following is the concise test on the compressibility of JSON data
#### JSON test file(s)

- `name:     crime-data_geojson.json`
- `size:     72844By`

Note: The file above was determined to serve well as an average JSON data content.

#### Tests, Q4/2011

With the exception of `zip`, all parameters/configurations were set to `ultra`

* `algoritm: cm | app: nanozip` 

  > 4076By/72844By  
  [1] 0.0559552
```

* `algoritm: gzip | app: gzip`

    > 6611By/72844By  
  [1] 0.0907556
```

* `algoritm: LZMA | app: 7zip`

      > 5864By/72844By  
   [1] 0.080501
```

* `algoritm: Huffman | app: zip`

    > 7382By/72844By  
  [1] 0.101340
```

* `algoritm: ? | app: src`

    > 4739By/72844By  
  [1] 0.0650568
```

#### Results:

- `nanozip`(http://www.nanozip.net/) archieves almost twice the compression of `zip`.
- Overall, JSON is usually highly compressible
- In most scenarios the data content is highly repetitive
- Special JSON compressors could be implemented, which utilize the advantage of pre-existing data structures and metadata availability (JSON-container). `MessagePack` (http://msgpack.org/)) may be used as a precursor towards that goal.