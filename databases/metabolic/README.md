AraCyc SQL Files
================

`aracyc_dump` contains the following data from AraCyc, in a tab delimited format. 

The columns are:
```
1. pathway name.                  The common name of the pathway.
2. reaction name.                 The reaction of the pathway. If present, the EC number is given. Otherwise, the AraCyc frame name for the reaction is given.
3. enzyme name.                   The common name of the enzyme that catalyzes the reaction. 
4. locus name.                    The locus name that encodes the enzyme. One locus per line.
```


`aracyc_compounds` contains all compounds found in AraCyc pathways:
```
1. compound common name.		The common name of the compound.
2. compound synonyms.		    The synonyms of the compound, joint by *.
3. chemical formula.		    The chemical formula of the compound.
4. smiles.			            The smiles string of the compound.
5. links.				        Links to other databases for the compound, such as CAS. 
6. EC.				            EC number of the reaction which contains this compound either as a reactant or a product. 
                                Without an EC number, the AraCyc frame name for the reaction is given.
7. reaction equation.		    The equation of the reaction.
8. pathway. 			        The common name of the pathway which contains the reaction. One pathway per line.
```