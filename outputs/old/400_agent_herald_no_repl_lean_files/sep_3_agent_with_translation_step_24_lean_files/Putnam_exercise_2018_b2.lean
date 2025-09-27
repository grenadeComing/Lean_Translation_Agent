import Mathlib

open Complex
open Finset

/-- Putnam 2018 B2: Let n be a positive integer, and let
    f_n(z) = n + (n-1) z + (n-2) z^2 + ... + z^{n-1}.
    Then f_n has no roots in the closed unit disk {z : ℂ | |z| ≤ 1}.
-/
theorem putnam_exercise_2018_b2 (n : ℕ) (hn : 1 ≤ n) :
  ∀ z : ℂ, Complex.abs z ≤ (1 : ℝ) → (Finset.sum (Finset.range n) fun k => (↑(n - k) : ℂ) * z ^ k) ≠ 0 := by sorry
