---
title: Werkwijze
nav_order: 5
layout: default
---

# Werkwijze
## To run the site and mapping locally
For instructions to build and run locally: https://github.com/openehr-nl/openehr-nl.github.io/blob/master/_build.md

## Process and Methodology 
### for modelling ZIBs on openEHR

1.  Identify (select) one ZIB model from the latest published list of ZIBs
	  1.  Use mapping documents (.csv and .md files on [https://github.com/openehr-nl/ZIBs-on-openEHR/tree/master/mappings](https://github.com/openehr-nl/ZIBs-on-openEHR/tree/master/mappings))
  
2.  Identify openEHR Archetype
    1. If archetype does not exist on CKM international
        1. Identify right ENTRY type
        2. Create archetype in github/AD in english/dutch and use right archetype id for it
        3. When finished save it in github/AD
        4. Ask a colleague to review it
        5. Translate it to dutch/english
	  2. If archetype exist, first you will need to checkout
         1. Check and update dutch translations
         2. Check and update definition (data types, occurrences)
         3. Verify term bindings (SNOMED CT mainly)
         4.  When work is done, save it on  international CKM
       3. Note: If archetype is on CKM, it will need to
          1. Be checked-out before changes are performed
          2. Go through review process (translation+content) 
3.  Identify openEHR Template
     1.  If template does not exist, create it in github/AD
     2. If template exists
        1. check for broken links and potential updates on archetype Ids
        2. check for translations
        3. check for 1:1 mapping with ZIB as regards names and occurrences
        4.  When finished save it in github and on CKM
 4.  Review and update mapping document information (.csv +.md)
      1.  Update links and versions used
     2. Identify FHIR profile & example and add link
     3. Define or Update mappings
     4. Update changelog (if any)


[Archetype Authoring, review and publication on openEHR CKM](https://openehr.atlassian.net/wiki/spaces/healthmod/pages/2949174/Archetype+authoring+review+and+publication)


## Bestanden voor mappings

tekst over .md en over .csv bestanden.

## Status

Een mappingconcept kan een van de volgende statussen hebben:

 - <span class="label label-purple">Inrichten</span>, als het concept voorbereid wordt voor ontwikkeling;
 - <span class="label label-yellow">Ontwikkelen</span>, als er actief aan het concept wordt gewerkt;
 - <span class="label label-blue">Concept</span>, als het werk wordt afgerond en het concept wacht op beordeling;
 - <span class="label label-green">Definitief</span>, als het mappingconcept en de toebehoren zijn voltooid.

