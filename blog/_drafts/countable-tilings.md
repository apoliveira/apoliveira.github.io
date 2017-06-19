---
layout: post
title: Can there be an uncountable tiling of the plane?
tags: [measure theory]
---

I came across a post on Reddit one morning that posed the following interesting little question:
> Are the only tilings of the plane countable?

This post isn't groundbreaking or extremely exciting, but showcases the usefulness of good definitions (and a cute proof).

Setting up some ground work, let's take a **tiling** of the plane to be a collection of pairwise-disjoint sets of non-zero Lebesgue measure (more restrictions like connected, simply connected, convex, etc. can be added but aren't needed).

As a first attempt one might think: Any set of non-zero measure must contain a rational point (ie. a pair in $\Q^2 \subset \R^2$).
Since the rational points are countable and we have a natural surjection from the set of rational pairs to the tiles, the tiling must be countable.
However, this approach is flawed, a positive meaure set need not contain a rational pair (e.g. the bullet riddled square ($[0,1] \times [0,1] \setminus \Q \times \Q$) has measure $1$ but contains no rationals).

> Actually, this proof technique should work as long as there are only countable many such sets (ie. of non-zero measure that contain no rationals).
> But the proof (at least the one I've come up with) of this statement proves the original statement, which is a bit redundant, but a nice result nonetheless.

This flaw was pointed out by a few Redditors and a fellow grad student, Cameron Bishop.
By this point another Redditor had made a post mentioning that Lebesgue measure is $\sigma$-finite (I won't prove this here).

> A measure, $m$, on a space $X$ is **$\sigma$-finite** if there exists a countable collection of measurable sets $\set{ U_n }_{n \in \Z}$ such that $m(U_n) < \infty$ for all $n$.
>
> That is, you can cover your space with countably many sets of finite measure.

At first, this doesn't seem very helpful.
We already knew we had a countable tiling of the plane; one such example is by unit squares.
Cameron had the idea to approach this by a contradiction: Suppose we have an uncountable tiling alongside a countable tiling.

**Claim.** Every tiling of $\R^2$ is countable.

**Proof.** Take ${ \set{U_n}\_{n \in \Z} }$ to be a countable tiling of $\R^2$.
Towards a contradiction, suppose $\set{V_\alpha}\_{\alpha \in \Lambda}$ is an uncountable covering of $\R^2$ by sets of finite measure.
Since there are uncountably many $V$'s, there must exist a set $U_n$ that requires uncountably many $V$'s to cover it; for if there weren't $\set{V_\alpha}\_{\alpha \in \Lambda}$ could be expressed as a countable union of countable sets, and thus be countable.

Let $\Lambda_n' \subset \Lambda$ be an indexing set for this uncountable collection of $V$'s.
Then $U_n = \cup_{\beta \in \Lambda_n'} V_\beta$, and so $m(U_n) = m( \cup_{\beta \in \Lambda_n'} V_\beta)$.
