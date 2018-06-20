---
layout: post
title: Can there be an uncountable tiling of the plane?
tags: [measure theory]
---

I came across a post on Reddit one morning that posed the following interesting little question:
> Are the only tilings of the plane countable?

The proof is elementary and quite cute.

Setting up some ground work, let's define a **tiling** of the plane to be a collection of pairwise-disjoint sets of finite and non-zero Lebesgue measure (more restrictions like connected, simply connected, convex, etc. can be added but aren't needed).

If we insist that the tiling be open (ie. each tile is open) the following proof works:

**Claim.** Every open tiling of $\R^2$ is countable.

**Proof.** By the density of the rationals, every tile must contain a rational point (ie. a pair in $\Q^2 \subseteq \R^2$).
Since the rational points are countable and we have a natural surjection from the set of rational pairs to the tiles, the tiling must be countable.

Without the assumption of openness there need not be a rational point in each tile.
There could some strange collection of "bullet-riddled" sets which exclude rational points but have positive measure (e.g. $(\[0,1\] \times \[0,1\]) \setminus (\Q \times \Q)$ ).

Following a redditor's comment that $\R^2$ is $\sigma$-finite, a fellow grad student, Cameron Bishop, put forth the idea behind the following proof.

A measure, $m$, on a space $X$ is **$\sigma$-finite** if there exists a countable collection of measurable sets $\set{ U_n }_{n \in \N}$ such that $m(U_n) < \infty$ for all $n$. That is, you can cover your space with countably many sets of finite measure.

**Claim.** Every tiling of $\R^2$ is countable.

**Proof.** By $\sigma$-finiteness of $\R^2$ take ${ \set{U_n}\_{n \in \N} }$ to be a countable tiling of $\R^2$.
Towards a contradiction, suppose $\set{V_\alpha}\_{\alpha \in \Lambda}$ is an uncountable covering of $\R^2$ by sets of finite measure.
Let $W_{k,\alpha} := U_k \cap V_\alpha$, so that $W := \set{ W_{k,\alpha} }_{\N \times \Lambda}$ is a refinement of the two tilings q.e.d.

We will count the set $W := \setofall W_{k,\alpha} \suchthat m(W_{k,\alpha}) > 0 \setend$ in two ways and get two different answers.

First, fix $k$ and consider only the sets $W_{k,\alpha} \ne \emptyset$; that is, the sets in the refinement that intersect $U_k$.
Consider the set $X_n^k = \setofall W_{k, \alpha} \in W \suchthat m(W_{k,\alpha}) \ge 2^{-n} \setend$. Since $U_k$ has finite measure, the set $X_n^k$ is finite for each $n$.
It then follows that there are only countably many sets that intersect $U_k$ with positive measure.
Further, since there are countably many $U_k$ it follows that $W$ is countable.

We now enumerate $W$ the "other way".
Fix $\alpha$ and again consider the sets $W_{k,\alpha} \ne \emptyset$; that is, the sets in the refinement that intersect $V_\alpha$.
Consider the set $X_n^\alpha = \setofall W_{k, \alpha} \in W \suchthat m(W_{k,\alpha}) \ge 2^{-n} \setend$. Since $V_\alpha$ has finite measure, the set $X_n^\alpha$ is finite for each $n$.

Just as the previous argument, it then follows that there are countably many sets that intersect $V_\alpha$ with positive measure; note that it's clear that there are at least countably many that do so since there are countable many $V_k$.
However, since there are uncountably many $V_\alpha$ it follows that $W$ is uncountable.

This contradicts contradicts our first count. Thus the only tilings of the plane are countable q.e.d.

## Remarks

In fact, this argument holds for any $\sigma$-finite space. Some examples are $\R^n$ and more generally locally-compact groups which are $\sigma$-compact (under Haar measure).
