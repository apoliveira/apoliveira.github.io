---
layout: page
title: Teaching
image: /public/images/talking_with_students.jpg
---

As a graduate student I had a number of great opportunities to teach and mentor students.
Below are the list of courses I've taught and TAed, as well as the Direct Reading Programs I was lucky enough to mentor!

---
{: style="margin: 0 auto; width:50%;"}

### Courses Taught at Wesleyan University

<ul>
{% for teaching in site.data.teaching %}
  <li>
    {{teaching.title}}, {{teaching.date}}
    {% if teaching.extra %}
      <ul>
        <li>{{ teaching.extra }}</li>
      </ul>
    {% endif %}
  </li>
{% endfor %}
</ul>

### Graduate Student Teaching Assistant Duties

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

---

### Mentoring (Directed Reading Program)

In the Fall of 2018 Lisa Kaylor, [Noelle Sawyer][noelle], and myself with [Felipe Ramírez][felipe] as our faculty mentor began the Directed Reading Program (DRP) at Wesleyan University. There will be a post explaining what DRP is and how it started. For the time being, Noelle has a really nice explanation of the program and her first semester as a mentor [here][noelle drp]. Also, the Wesleyan Chapter's DRP website can be found [here][wesleyan drp].

Below is a list of the readings I have mentored:

<ul>
{% for reading in site.data.drps %}
  <li>
    {{reading.title}}, {{reading.date}}
    {% if reading.extra %}
      <ul>
        <li>{{ reading.extra | markdownify }}</li>
      </ul>
    {% endif %}
  </li>
{% endfor %}
</ul>

---

### Some Useful Links

If you're interested in learning math on your own, like mind maps, but don't know where to start, I highly recommend giving [Learn Anything](https://learn-anything.xyz/mathematics) a look. It is a fully open source search engine, so you can also contribute back to the project. It also has mindmaps for a number of other subjects.

Another great resource for understanding different topics is [Khan Academy](https://www.khanacademy.org/math). It covers a wide range of material from Early Math to Calculus. Their [YouTube Channel](https://www.youtube.com/channel/UC4a-Gbdw7vOaccHmFo40b9g) is also a great help.

If instead you prefer perusing notes that work you through examples give [Paul's Online Math Notes](http://tutorial.math.lamar.edu/) a look!


[noelle]: https://www.noellesawyer.com/
[felipe]: http://framirez.faculty.wesleyan.edu/
[noelle drp]: https://www.noellesawyer.com/desk-1/notes-from-the-directed-reading-program-s-first-semester
[wesleyan drp]: https://drp.site.wesleyan.edu/
