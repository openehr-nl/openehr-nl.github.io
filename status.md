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

# Mappings

<ul>
{% for mapping_hash in site.data.mappings %}
 {% for mapping in mapping_hash %}
  <li>
  	{{ mapping[0] }}:{{ mapping[1] }}
    {{ mapping.Arcehtype_naam }},
    {{ mapping.OpenEHR_node_naam }}  
    
  </li>
  {% endfor %}
{% endfor %}
</ul>

# Collections

{% for zib_template in site.zib_templates %}
  {{ zib_template.content | markdownify }}
{% endfor %}

