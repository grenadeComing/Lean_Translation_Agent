import Mathlib

/-
Let (X,d) be a metric space. Let C_b(X,ℝ) be the set of bounded continuous functions X → ℝ
with metric d(f,g) := sup_{x ∈ X} |f(x)-g(x)|. Show that (C_b(X,ℝ),d) is a metric
space and that convergence in d is equivalent to uniform convergence.

We use BoundedContinuousFunction X ℝ for C_b(X,ℝ).
-/

variable {X : Type*} [TopologicalSpace X]

open BoundedContinuousFunction

/-- (C_b(X,ℝ), d) is a metric space where d is the sup metric. Proof omitted. -/
instance metricSpace_Cb : MetricSpace (X →ᵇ ℝ) := by
  -- the metric is the sup metric coming from `BoundedContinuousFunction.instDist`.
  -- Omitted proof that this satisfies the metric axioms.
  sorry

/-- Convergence in the sup metric is equivalent to uniform convergence (ε-N formulation).
    We state the equivalence for sequences. Proof omitted. -/
theorem convergence_iff_uniform (f : X →ᵇ ℝ) (s : ℕ → X →ᵇ ℝ) :
  (∀ ε > 0, ∃ N, ∀ n ≥ N, dist (s n) f < ε) ↔
    (∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ x : X, |(s n : X → ℝ) x - (f : X → ℝ) x| < ε) := by
  -- Use the definition of `dist` on `BoundedContinuousFunction` as the supremum of
  -- pointwise absolute differences, and the equivalence between `sup < ε` and
  -- `∀ x, |...| < ε`.
  sorry
