import Mathlib

/-!
One-point compactification of ℝ^n is homeomorphic to S^n.

This file records the statement (without proof) that the one-point
compactification of ℝ^n is homeomorphic to the n-sphere S^n. We model
ℝ^n as Fin n → ℝ and S^n as the metric sphere in Fin (n+1) → ℝ.
-/

theorem benmckay_top_continuity_232 (n : ℕ) :
  Nonempty (Homeomorph (Sum (Fin n → ℝ) PUnit) {x : Fin (n+1) → ℝ // x ∈ Metric.sphere (0 : Fin (n+1) → ℝ) 1}) :=
by
  -- One-point compactification of ℝ^n is homeomorphic to S^n.
  -- Proof omitted.
  sorry
