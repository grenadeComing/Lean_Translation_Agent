import Mathlib

open BigOperators

theorem srdoty_alg_linear_gps_376 {n : Nat} (A : Matrix (Fin n) (Fin n) ℝ)
  (h : A.transpose * A = 1) :
  ∀ (i j : Fin n), (∑ k : Fin n, A k i * A k j) = if i = j then (1 : ℝ) else 0 := by sorry
