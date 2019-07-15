---
layout: page
title: Research
image: board.jpg
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
    {% if paper.preprint %}
      (<a href="{{paper.link}}">preprint</a>)
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
<ul>
{% for talk in site.data.talks %}
  <li>
    <i>{{talk.title}}</i>, {{talk.location}}, {{talk.date}}.
    {% if talk.notes %}
      <ul>
        <li>{{talk.notes}}</li>
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
