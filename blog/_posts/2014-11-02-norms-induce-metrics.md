---
layout: post
title: Norms Induce Metrics
tags: [undergrad,math,norm,metric]
---

<div class="message">
This post was written back when I was an undergrad (as you can tell by the date). It's not an amazing result, but was a fun exercise that arose from an interesting conversation I had with a professor at the time.
</div>

__Note:__ We'll only consider norms and metrics over Vector Spaces for this post.

In a [previous post]({% post_url /blog/2014-10-18-norms-and-metrics %}) ("How different are metrics and norms?") I claimed that norms induce metrics. I had heard this in passing in classes and read it in textbooks, so I took it to be true. However, I've been thinking about how the proof works out and decided to document it here.

<!-- excerpt -->

Definitions
---

We'll use the same definitions as before:

A __norm__ is a function that defines a length/size to each vector in a vector space. A norm, $p$, on a vector space, $U$ over a field $F$, is a function $p : U \to \R$ which satisfies the following for all $a \in F$, $u,v \in U$:

1.  $p(a v) = \vert a \vert p(v)$ (scalability)
2.  If $p(v) = 0$ then $v$ is the zero vector.
3.  $p( u + v ) \le p(u) + p(v)$ (triangle inequality)

A __metric__ is a function that defines a distance between elements of a set. Formally a metric $d$, on a vector space, $V$, is a function $d : V \times V \to \R$ which satisfies the following for all $x,y,z \in V$:

1.  $d(x,y) \ge 0$ (non-negative)
2.  $d(x,y) = 0$ if and only if $x = y$
3.  $d(x,y) = d(y,x)$ (symmetry)
4.  $d(x,z) \le d(x,y) + d(y,z)$ (triangle inequality)

Proof
---

Assume $V$ is a vector space over a field $F$, $p : V \to \R$ is a norm, and $u,v,w \in V$.

Define a function $d : V \times V \to \R$ by $d(u, v) = p( u - v )$. (I claim $d$ will then be a metric)

### Property 1.
By definition, $d(u,v) = p(u - v)$, and $p(t) \ge 0$ for all $t \in V$. So, $d(u,v) \ge 0$.

### Property 2.
_(forward)_
Assume $d(u,v) = 0$. Then $p(u-v) = 0$, by property 3 of norms this implies $u-v = 0$. Thus, $u = v$.

_(reverse)_
Assume $u = v$. Then $d(u,v) = p(u-v) = p(u - u) = p(0)$. Again by property 3 of norms $p(0) = 0$. Thus, $d(u,v) = 0$.

### Property 3.
We have,
$$
\begin{align*}
d(u,v) &= p(u-v) \\
 &= p(-v + u) \\
 &= p( -1 \cdot ( v - u ) \\
 &= \mid -1 \mid p(v-u) \\
 &= p(v-u) = d(v,u)
\end{align*}
$$

### Property 4
Note that $p(-v) = p(-1 \cdot v) = \mid -1 \mid p(v) = p(v)$.
We have,
$$
\begin{align*}
d(t,u) + d(u,v) &= p(t - u) + p(u - v) \\
    &\ge p(t) + p(-u) + p(u) + p(-v) &\text{(by property 3 of norms)} \\
    &= p(t) + p(u) + p(u) + p(v) \\
    &= p(t) + p(v) + 2 \cdot p(u) \\
    &\ge p(t) + p(v) \\
    &\ge p(t - v) &\text{(by property 3 of norms)} \\
    &= d(t,v).
\end{align*}
$$

So, $d(t,u) + d(u,v) \ge d(t,v)$.

Then, $d$ satisfies all four properties of being a metric. Therefore, it is a metric.

First Attempts
---

Initially, I tried defining the metric as $d(u,v) = p(u) - p(v)$. I was thinking of the necessary symmetry, and since $p(u),p(v) \in \R$ they commute. This leads to _a few_ problems in proving the properties (except non-negativity), including symmetry!

I took a pause from the proof and contemplated if this was a bad approach. I defaulted to coming up with an example in $\R^n$. Immediately I thought of the idea "the distance between two vectors should be the length of the difference (vector)"!

Looking back this definition makes a great deal of sense, and I'm not sure why I thought my original definition was a good idea...
