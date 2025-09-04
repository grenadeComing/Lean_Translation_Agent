import Mathlib

variable {X : Type*} [TopologicalSpace X] [MetricSpace X]

/-- Notation for bounded continuous real-valued functions. -/
abbrev Cb := BoundedContinuousFunction X ℝ

/-- There is a metric space structure on Cb (sup metric). Proof omitted. -/
theorem cb_metric_space : MetricSpace Cb := by sorry

/-- Convergence in the sup metric on Cb is equivalent to uniform convergence
(ε-N definition). Proof omitted. -/
theorem tendsto_iff_uniform (u : ℕ → Cb) (f : Cb) :
  Tendsto u atTop (𝓝 f) ↔ (∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ x : X, |u n x - f x| < ε) := by sorry
