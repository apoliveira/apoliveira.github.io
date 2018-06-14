---
layout: page
title: Research
---

{{ site.research }}

### External Research Experience
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
