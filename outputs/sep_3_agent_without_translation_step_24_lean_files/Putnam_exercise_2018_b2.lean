import Mathlib

open Finset Complex

noncomputable def f (n : ℕ) (z : ℂ) : ℂ := (Finset.range n).sum fun k => (↑(n - k) : ℂ) * z ^ k

theorem putnam_exercise_2018_b2 (n : ℕ) (hn : 0 < n) : ∀ z : ℂ, Complex.abs z ≤ 1 → f n z ≠ 0 := by sorry
