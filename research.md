---
layout: page
title: Research
---

{{ site.research }}

### Publications
<ul>
{% for paper in site.data.papers %}
  <li>
    {% if paper.authors %}
      (joint w. {{paper.authors}})
    {% endif %}
    <i>{{paper.title}}</i>,
    {% if paper.preprint %}
      (<a href="{{paper.link}}">preprint</a>)
    {% elsif paper.journal %}
      <a href="{{paper.link}}">{{paper.journal}}</a>
    {% else %}
      (in preparation)
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
