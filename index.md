---
layout: default
title: Home
image: hiking.jpg
---

<p>{{ site.description }}</p>

<hr />

<h3><a href="/blog/">Blog</a></h3>

<p> I occasionally (read: sporadically) write posts on the material I'm reading and problems that arise while talking to others. This is where they end up:

<div class="container">
  <div class="posts">
    {% for post in site.posts limit : 3 %}
    <div class="post">
      <h4 class="post-title">
        <a href="{{ post.url }}">
          {{ post.title }}
        </a>
      </h4>
      <span class="post-date">{{ post.date | date_to_string }}</span>
      {% if post.snippet != null %}
        {{ post.snippet }}
      {% endif %}
    </div>
    {% endfor %}
  </div>
</div>