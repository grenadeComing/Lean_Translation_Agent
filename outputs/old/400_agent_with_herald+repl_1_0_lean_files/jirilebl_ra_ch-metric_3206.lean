import Mathlib

variable {X : Type _} [MetricSpace X]

/-- Bounded continuous real-valued functions on X. -/
def C_b : Type _ := { f : X → ℝ // Continuous f ∧ ∃ M : ℝ, ∀ x, |f x| ≤ M }

/-- Statement: (C_b(X,ℝ), d) is a metric space (existence of the metric structure). -/
theorem C_b_is_metric_space : Prop := by sorry

/-- Statement: Convergence in the sup metric is equivalent to uniform convergence. -/
theorem sup_dist_tends_iff_uniform : Prop := by sorry
