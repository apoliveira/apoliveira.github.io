---
layout: page
title: Research
---

I'm currently reading/researching Ergodic Theory and Dynamical Systems, and their connections to Number Theory.

### Talks
<ul>
{% for talk in site.data.talks %}
  <li>
    <i>{{talk.title}}</i>, {{talk.location}}, {{talk.date}}.
  </li>
{% endfor %}
</ul>


### Conferences Attended
<ul>
{% for conf in site.data.conferences %}
  <li>
    <i>{{conf.name}}</i>, {{conf.location}}, {{conf.date}}.
  </li>
{% endfor %}
</ul>

### Research Experience
<ul>
{% for exp in site.data.research_experience %}
  <li>
    {{exp.description | markdownify | remove: '<p>' | remove: '</p>'}}
    {% if exp.extra %}
      <ul>
        <li>{{ exp.extra | markdownify | remove: '<p>' | remove: '</p>'}}</li>
      </ul>
    {% endif %}
  </li>
{% endfor %}
</ul>
