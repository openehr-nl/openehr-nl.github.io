---
title: Status
has_children: false
nav_order: 3
---

# Status


Een template kan een van de volgende statussen hebben:

 - Todo
 - Doing
 - Draft
 - Final

#collections

 {% for collection in site.collections %}
  {{ collection }}
{% endfor %}