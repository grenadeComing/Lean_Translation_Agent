import Mathlib

open Complex Finset

theorem jirilebl_ca_ca_12556 (f : ℂ → ℂ)
  (h : IsHolomorphicOn f (Metric.closedBall (0 : ℂ) 1))
  (h0 : f 0 ≠ 0) :
  ∃ C : ℝ, ∀ m : ℕ, ∀ z : ℂ, abs z ≤ 1 →
    abs (1 - ∑ k in Finset.range (m+1), (iterated_deriv f k 0) / (Nat.factorial k * f 0) * z ^ k) ≤ C * abs z ^ (m+1) := by sorry
