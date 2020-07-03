---
title: Werkwijze
nav_order: 5
layout: default
---

# Werkwijze

## Process and Methodology 
### for modelling ZIBs on openEHR

1. Identify (select) one ZIB model from the latest published list of ZIBs 
	a. Use mapping documents (.csv and .md files on https://github.com/openehr-nl/ZIBs-on-openEHR/tree/master/mappings)
2. Identify openEHR Archetype
	a. If archetype does not exist on CKM international
		- Identify right ENTRY type
		- Create archetype in github/AD in english/dutch and use right archetype id for it
		- When finished save it in github/AD 
		- Ask a colleague to review it
		- Translate it to dutch/english
	b. If archetype exist, first you will need to checkout
		- Check and update dutch translations
		- Check and update definition (data types, occurrences)
		- Verify term bindings (SNOMED CT mainly)
	c. When work is done, save it international CKM
	d. Note: If archetype is on CKM, it will need to
		- Be checked-out before changes are performed
		- Go through review process (translation+content)
3. Identify openEHR Template
	a. If template does not exist, create it in github/AD
	b. If template exists 
		- check for broken links and potential updates on archetype Ids
		- check for translations
		- check for 1:1 mapping with ZIB as regards names and occurrences
	c. When finished save it in github and on CKM
4. Review and update mapping document information (.csv +.md)
	a. Update links and versions used
	b. Identify FHIR profile & example and add link
	c. Define or Update mappings
	d. Update changelog (if any)


[Archetype Authoring, review and publication on openEHR CKM]https://openehr.atlassian.net/wiki/spaces/healthmod/pages/2949174/Archetype+authoring+review+and+publication


## Bestanden voor mappings

tekst over .md en over .csv bestanden.

## Status

Een mappingconcept kan een van de volgende statussen hebben:

 - <span class="label label-purple">Inrichten</span>, als het concept voorbereid wordt voor ontwikkeling;
 - <span class="label label-yellow">Ontwikkelen</span>, als er actief aan het concept wordt gewerkt;
 - <span class="label label-blue">Concept</span>, als het werk wordt afgerond en het concept wacht op beordeling;
 - <span class="label label-green">Definitief</span>, als het mappingconcept en de toebehoren zijn voltooid.

