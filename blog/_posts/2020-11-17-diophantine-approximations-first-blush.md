---
layout: post
title: Diophantine approximations at first blush
tags: [expository, diophantine approximations]
---

How do we build **round** things in the real world? Of course $\pi$ is involved, but it's irrational. How then do we get precise measurements?
Fortunately the universe is kind and allows for some imprecision.
We don't need to be precise, we just need to be close enough.

This is reminiscent of [Zeno's Paradox][zeno].
  
The question now is, can we find *good* approximations to $\pi$ and if so, how?

### An example

The question of finding *an* approximation isn't too hard.
For $\pi$, a good number of people are all too ready to rattle off the first couple digits.
But these approximations aren't very *good*.

What do I mean by that? Well one common approximation to $\pi$ is 

$$ \pi \approx 3.14 = \frac{314}{100}.$$

But this rational has relatively large denominator and only gets us 2 measly digits of $\pi$.

We could instead use 

$$ \frac{22}{7} \approx 3.14286 $$

which also gets us within two digits of $\pi$ **and** with a significantly smaller denominator.

More specifically, we have 

$$ \abs{ \pi - \frac{314}{100} } < \frac{1}{100} $$

whereas 

$$ \abs{ \pi - \frac{22}{7} } < \frac{1}{100} < \frac{1}{7^2}. $$

We could instead use

$$ \frac{355}{113} \approx 3.141592920, $$

which gives us SIX digits of $\pi$!

Moreover, we have 

$$ \abs{ \pi - \frac{355}{113} } < \frac{1}{1,000,000} < \frac{1}{113^2}. $$

This is a vast improvement over $\frac{314}{100}$ with only a small change in denominator.

### Diophantine Approximations

The real numbers are a [completion][completion] of the rationals; intuitively this means that there are "gaps" between the rational numbers and the real numbers fill in those gaps.
By filling in these gaps, the rational numbers end up as a [dense subset][dense] of the real numbers; that is, you can always find a rational number *close enough* to any real number.

Formally, the rationals being dense in the reals means 

$$ ( \forall x \in \R ) ( \forall \eps > 0 ) \left( \exists \frac{a}{n} \in \Q \right) \\ \abs{ x - \frac{a}{n} } < \eps. $$

Loosely speaking, Diophantine Approximation tries to *quantify how dense the rationals are in the reals*.

One way to do this is define a notion of complexity for the rationals.
An intuitive(-ish) definition of this is by the denominator of the rational.
That is, rationals with larger denominators are more *complex*.
This notion is often times referred to as the *height*.

With this notion of complexity, we would expect that a rational approximation with large denominator to be a good approximation; otherwise, what's the benefit of all this complexity?

Looking back at our example for $\pi$ we see that $\frac{314}{100}$ is much more complicated than $\frac{22}{7}$ without any gain in how accurate of an approximation it is.
Whereas $\frac{355}{113}$ is also more complicated but improves the degree of accuracy significantly!

The following theorem by Dirichlet, often seen as the start of Diophantine approximations, encapsulates this connection between the denominator of the rational number and the degree of accuracy:

> **Theorem** (Dirichlet, 1842)
> For every irrational number $x \in \R \setminus \Q$, there exist infinitely many rationals $\frac{a}{n} \in \Q$ such that
> 
> $$ \abs{ x - \frac{a}{n} } < \frac{1}{n^2}.$$

This result is actually a Corollary of the following theorem

> **Theorem** (Dirichlet, 1842)
> For every number $x \in \R$ and any $N \in \N$, there exists a rational $\frac{a}{n} \in \Q$ such that
> 
> $$ \abs{ x - \frac{a}{n} } < \frac{1}{nN} $$
>
> $$ \text{and} \qquad n \le N.$$

Note that this Theorem explicitly says that we can bound the denominator and guarantee a certain degree of accuracy!

We'll prove this in a coming blog post! Warning: pigeons may be involved.

#### What's next

Now that we know such approximations exist, there are a few questions we can ask:

- How do we go about actually finding them?
- What if we want to exclude certain rationals?
- Can we improve the degree of accuracy beyond $\frac{1}{n^2}$?
- Why can't we do this in other spaces where the rationals are dense?
  - More generally, can we take this setup into other spaces at all?

We'll answer (some of) these questions in future posts!

[zeno]: https://en.wikipedia.org/wiki/Zeno%27s_paradoxes
[completion]: https://en.wikipedia.org/wiki/Complete_metric_space#Completion
[dense]: https://en.wikipedia.org/wiki/Dense_set
