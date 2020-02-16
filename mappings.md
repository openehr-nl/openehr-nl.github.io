---
title: Mappings
layout: default
nav_order: 2
has_children: true
has_toc: false
---

# Mappings

{% assign items = site.pages | where: 'parent', 'Mappings' | sort: 'title' %}
<table>
    <thead align="left">
        <tr>
            <th>ZIB Naam</th>
            <th>Versie</th>
            <th>Status</th>
            <th>Laatste wijziging</th>
        </tr>
    </thead>
    <tbody>
        {% for p in items %}
        <tr>
            <td><a href="{{p.url}}">{{ p.title }}</a></td>
            <td>{{ p.version }}</td>
            <td>{% include status.html status=p.status.mapping %}</td>
            <td>{{ p.date | date: "%d-%m-%Y" }}</td>
        </tr>
        {% endfor %}
    </tbody>
</table>
