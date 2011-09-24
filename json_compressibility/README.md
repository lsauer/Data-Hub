### specific JSON Compressibility Test
short test on the compressibility of JSON data
original: crime-data_geojson.json 72844By

except for zip all parameters were set to ultra

* cm/ nanozip: 
  > 4076/72844
  [1] 0.05595519
* gzip:
  > 6611/72844
  [1] 0.09075559
* LZMA / 7zip
  > 5864/72844
  [1] 0.0805008
* Huffman / zip:
  > 7382/72844
  [1] 0.1013398
* ?/Arc:
  > 4739/72844
  [1] 0.06505683
  
### Result:
nanozip archieves almost twice the compression of zip. Overall JSON is usually highly compressible as in most scenarios the packaged data is highly repetitive
Special JSON compressors could be written which utilize the advantage of pre-existing data structure and metadata availability (JSON-container)