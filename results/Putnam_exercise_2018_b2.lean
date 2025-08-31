import Mathlib
open Complex

/-- Let $n$ be a positive integer, and let $f_{n}(z)=n+(n-1) z+$ $(n-2) z^{2}+\cdots+z^{n-1}$. Prove that $f_{n}$ has no roots in the closed unit disk $\{z \in \mathbb{C}:|z| \leq 1\}$.

Putnam 2018 B2 -/
theorem polynomial_has_no_roots_in_closed_unit_disk (n : ℕ) (hn : 0 < n) (z : ℂ) (hz : abs z ≤ 1) :
  ¬(n + (n - 1) * z + (n - 2) * z ^ 2 + (z ^ (n - 1)) = 0) :=
sorry
