---
layout: post
title: How different are metrics and norms?
tags: [undergrad,math,metric,norm]
---

<div class="message">
This post was written back when I was an undergrad (as you can tell by the date). It's not an amazing result, but was a fun exercise that arose from an interesting conversation I had with a professor at the time.
</div>

__Note:__ We'll only consider norms and metrics on Vector Spaces for this post.

This conversation began with Dr. Andrew Greene one afternoon in the Math department. It started with wondering how to prove the box-metric satisfies the triangle inequality, and lead to discussing metrics/norms on sequences of sequences of real functions...

Idea
---

Metrics and Norms sound very related. A norm gives a notion of length for a vector. A metric gives a notion of distance between vectors. 

From norm to metric: The nature of vector spaces implies that there exists one vector between any two vectors (if $u,v \in V$, then there exists a unique $t \in V$ such that $u + t = v$). So, the distance of the two vectors is defined to be the length of this vector.

From metric to norm: Again, the nature of vector spaces implies that there exists one unique vector between any two vectors. If we take one of these vectors to be the zero vector, why isn't the distance from the zero vector to any other vector, $v$, a valid length for $v$?

<!-- excerpt -->

Definitions
---

A __norm__ is a function that defines a length/size to each vector in a vector space. A norm, $p$, on a vector space, $U$ over a field $F$, is a function $p : U \to \R$ which satisfies the following for all $a \in F$, $u,v \in U$:

1.  $p(a v) = \vert a \vert p(v)$ (scalability)
2.  If $p(v) = 0$ then $v$ is the zero vector.
3.  $p( u + v ) \le p(u) + p(v)$ (triangle inequality)

A __metric__ is a function that defines a distance between elements of a set. Formally a metric $d$, on a vector space, $V$, is a function $d : V \times V \to \R$ which satisfies the following for all $x,y,z \in V$:

1.  $d(x,y) \ge 0$ (non-negative)
2.  $d(x,y) = 0$ if and only if $x = y$
3.  $d(x,y) = d(y,x)$ (symmetry)
4.  $d(x,z) \le d(x,y) + d(y,z)$ (triangle inequality)

What's missing?
---

Let us start with a vector space, $V$, over a field $F$. Also, let $u,v,z \in V$ and $a \in F$.

Take $d : V \times V \to \R$ to be a metric on $V$, and define $p' : V \to \R$ as $p(u) = d(0,u)$.

Property 2 is satisfied by definition: $p'(v) = d(0,v) = 0$ if and only if $v = 0$.

Property 3 is not satisfied. However, we have that $$d(0, u+v) \le d(0, u) + d(u, u+v)$$ So, if $d$ is translation invariant, then $d(u, u+v) = d(0,v)$. It follows that our previous equation becomes $$d(0,u+v) \le d(0,u) + d(0,v)$$ We then have $p'(u + v) = d(0, u+v) \le d(0,u) + d(0,v) = p'(u) + p'(v)$, satisfying property 3.

Property 1 is not satisfied. It poses a problem as none of our metric space properties mention scalabilitity. So, we take it as is and require our metric to be absolutely homogenous (of degree 1). That is, $d(au, av) = \vert a \vert \cdot d(u, v)$. Then, $d(0, av) = \vert a \vert \cdot d(0, v)$, satisfying property 1.

Wrap Up
---

Clearly not every metric will induce a norm. Only those that are translaton invariant and absolutely homogenous will. 

After writing this post, I found the following on the [Metric Wiki] [wiki]:

> Conversely if a metric $d$ on a vector space $X$ satisfies the properties
>
> - $d(x,y) = d(x+a,y+a)$ (translation invariance)
> - $d(\alpha x, \alpha y) = \vert\alpha\vert d(x,y)$ (homogeneity)
>
> then we can define a norm on $X$ by
> $ \vert x \vert := d(x,0)$

Glad my reasoning lead to the same conclusion!

[wiki]: https://en.wikipedia.org/wiki/Metric_(mathematics)#Metrics_on_vector_spaces

