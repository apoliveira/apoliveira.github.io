---
  layout: page
  title: Tags
  nav: false
---
{% assign tags=site.tags | sort%}

{% for tag in tags %}
  <h3 id="{{tag[0]}}">{{ tag[0] }}</h3>
  <ul>
    {% for post in tag[1] %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}
