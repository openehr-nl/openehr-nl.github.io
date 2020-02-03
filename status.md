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
  {{ zib_template.content | markdownify }} <br>
  <a href="{{ zib_template.url }}">{{ zib_template.url }}</a>
{% endfor %}
