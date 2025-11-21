import Mathlib

variable {X : Type _} [MetricSpace X]

/-- Supremum distance between two bounded continuous real-valued functions on X. -/
noncomputable def sup_dist (f g : BoundedContinuousFunction X ℝ) : ℝ :=
  ⨆ (x : X), |f x - g x|

/-- The space of bounded continuous real-valued functions on X, equipped with the sup distance,
    is a metric space. -/
noncomputable instance sup_metric_space : MetricSpace (BoundedContinuousFunction X ℝ) := by sorry

/-- Convergence in the sup metric is equivalent to uniform convergence (epsilon-N formulation).
    We express both sides by the usual epsilon-N criterion. -/
theorem sup_convergence_iff_uniform {f : BoundedContinuousFunction X ℝ} {g : ℕ → BoundedContinuousFunction X ℝ} :
  (∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, sup_dist (g n) f < ε) ↔
    (∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, ∀ x : X, |g n x - f x| < ε) := by sorry
