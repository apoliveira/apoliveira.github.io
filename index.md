---
layout: default
title: Home
image: /public/images/portrait.jpg
---

<p>{{ site.description }}</p>
<p>{{ site.research }}

<hr />

<h3><a href="/blog/">Blog</a></h3>

<p> I occasionally (read: sporadically) write posts on the material I'm reading and problems that arise while talking to others. This is where they end up:

<div class="container">
  <div class="posts">
    {% for post in site.posts limit : 5 %}
      {% include post.html content=post %}
    {% endfor %}
  </div>
</div>
