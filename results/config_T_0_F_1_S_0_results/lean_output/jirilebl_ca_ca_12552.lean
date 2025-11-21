import Mathlib

open Metric

theorem jirilebl_ca_ca_12552 (f : ℂ → ℂ)
  (hU : ∃ U : Set ℂ, IsOpen U ∧ closedBall (0 : ℂ) (1 : ℝ) ⊆ U ∧ AnalyticOn ℂ f U)
  (hf0 : f 0 ≠ 0) :
  ∃ C : ℝ, ∀ m : ℕ, ∀ z : ℂ, ‖z‖ ≤ (1 : ℝ) →
    ‖(1 : ℂ) - Finset.sum (Finset.range (m + 1)) fun k =>
      (iteratedDeriv k f 0) / ((Nat.cast (Nat.factorial k) : ℂ) * f 0) * z ^ k‖ ≤ C * ‖z‖ ^ (m + 1) := by sorry