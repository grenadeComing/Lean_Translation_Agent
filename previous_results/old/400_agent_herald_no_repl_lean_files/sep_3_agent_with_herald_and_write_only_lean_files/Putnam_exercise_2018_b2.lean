import Mathlib

/-!
Putnam 2018 B2 (translation)
We define f_n(z) = n + (n-1) z + (n-2) z^2 + ... + z^{n-1}
and state that f_n has no roots in the closed unit disk {z : ℂ | |z| ≤ 1}.
-/

open Complex Finset

def f_n (n : ℕ) (z : ℂ) : ℂ :=
  ∑ k in Finset.range n, (↑(n - k) : ℂ) * z ^ k

theorem Putnam_2018_B2 (n : ℕ) (hn : 0 < n) :
  ∀ z : ℂ, |z| ≤ 1 → f_n n z ≠ 0 := by sorry
