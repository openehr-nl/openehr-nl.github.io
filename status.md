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

 {% for zib_templates in site.collections %}
  {{ zib_templates }}
{% endfor %}
