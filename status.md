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

Change

# Collections

{% for zib_template in site.zib_templates %}
  {{ zib_templates.content | markdownify }}
{% endfor %}
