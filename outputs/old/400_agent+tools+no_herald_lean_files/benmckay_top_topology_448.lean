import Mathlib

/-!
# Closed and bounded implies compact (stated)

This file states the (not true in general) claim: in an arbitrary metric space, a closed and bounded subset is compact.
We only give the statement here and do not provide a proof.
-/

theorem closed_bounded_compact {X : Type*} [MetricSpace X] {S : Set X}
  (h_closed : IsClosed S)
  (h_bounded : ∃ (x0 : X) (R : ℝ), 0 < R ∧ S ⊆ Metric.ball x0 R) : IsCompact S := by sorry
