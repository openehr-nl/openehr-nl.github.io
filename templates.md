---
title: Templates
layout: default
nav_order: 4
has_children: true
has_toc: false
---

# Templates 

{% assign items = site.pages | where: 'parent', 'Templates' | sort: 'title' %}
<table>
    <thead align="left">
        <tr>
            <th>Template Naam</th>
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
            <td>{% include status.html status=p.status.template %}</td>
            <td>{{ p.date | date: "%d-%m-%Y" }}</td>
        </tr>
        {% endfor %}
    </tbody>
</table>
