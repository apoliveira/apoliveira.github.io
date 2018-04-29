---
layout: page
title: Teaching
image: teaching.jpg
---

I share [Federico Ardila-Mantilla's](http://math.sfsu.edu/federico/) axioms:

- Axiom 1. Mathematical talent is distributed equally among different groups, irrespective of geographic, demographic, and economic boundaries.

- Axiom 2. Everyone can have joyful, meaningful, and empowering mathematical experiences.

- Axiom 3. Mathematics is a powerful, malleable tool that can be shaped and used differently by various communities to serve their needs.

- Axiom 4. Every student deserves to be treated with dignity and respect.

---

### Courses taught
<ul>
{% for teaching in site.data.teaching %}
  <li>
    {{teaching.title}}, {{teaching.date}}
  </li>
{% endfor %}
</ul>

### Graduate Student Teaching Assistant duties
<ul>
{% for ta in site.data.taduties %}
  <li>
    {{ta.title}}, {{ta.date}}
    {% if ta.extra %}
      <ul>
        <li>{{ ta.extra }}</li>
      </ul>
    {% endif %}
  </li>
{% endfor %}
</ul>

### Some Useful Links

If you're interested in learning math on your own, like mind maps, but don't know where to start, I highly recommend giving [Learn Anything](https://learn-anything.xyz/mathematics) a look. It is a fully open source search engine, so you can also contribute back to the project. It also has mindmaps for a number of other subjects.

Another great resource for understanding different topics is [Khan Academy](https://www.khanacademy.org/math). It covers a wide range of material from Early Math to Calculus. Their [YouTube Channel](https://www.youtube.com/channel/UC4a-Gbdw7vOaccHmFo40b9g) is also a great help.

If instead you prefer perusing notes that work you through examples give [Paul's Online Math Notes](http://tutorial.math.lamar.edu/) a look!
