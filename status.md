---
title: Status
has_children: false
nav_order: 3
layout: default
---

# Status


Een template kan een van de volgende statussen hebben:

 - Todo
 - Doing
 - Draft
 - Final

#collections

 {% for zib_template in site.zibtemplates %}
  {{ zib_templates.content | markdownify }}
{% endfor %}
