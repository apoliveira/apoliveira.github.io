---
layout: page
title: Research
image: /public/images/board.jpg
---

{{ site.research }}

### Publications
<ul>
{% for paper in site.data.papers %}
  <li>
    {% if paper.authors %}
      (joint w. {{ paper.authors | array_to_sentence_string | markdownify | remove: '<p>' | remove: '</p>' }})
    {% endif %}
    <i>{{paper.title}}</i>,
    {% if paper.status %}
      (<a href="{{paper.link}}">{{paper.status}}</a>)
    {% elsif paper.journal %}
      <a href="{{paper.link}}">{{paper.journal}}</a>
    {% else %}
      (in preparation)
    {% endif %}
    {% if paper.extra %}
    <ul>
      <li>{{paper.extra | markdownify}}</li>
    </ul>
    {% endif %}
  </li>
{% endfor %}
</ul>

### Talks
{% assign invited_talks = site.data.talks | where:"invited","true" %}
{% assign not_invited_talks = site.data.talks | where_exp:"talks","talks.invited != true" %}

#### Invited

<ul>
{% for talk in invited_talks %}
  <li>
    <i>{{talk.title}}</i>, {{talk.location}}, {{talk.month}} {{talk.year}}.
    {% if talk.extra %}
      <ul>
        <li>{{talk.extra | markdownify }}</li>
      </ul>
    {% endif %}
  </li>
{% endfor %}
</ul>

#### Contributed

<ul>
{% for talk in not_invited_talks %}
  <li>
    <i>{{talk.title}}</i>, {{talk.location}}, {{talk.month}} {{talk.year}}.
    {% if talk.extra %}
      <ul>
        <li>{{talk.extra | markdownify }}</li>
      </ul>
    {% endif %}
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
