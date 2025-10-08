import Mathlib

/-!
Let (X,d) be a metric space. Let C_b(X,ℝ) be the set of bounded continuous functions X → ℝ
with metric d(f,g) := sup_{x ∈ X} |f(x)-g(x)|.
Show that (C_b(X,ℝ),d) is a metric space and that convergence in d is equivalent to uniform convergence.
-/

noncomputable section

open Filter Topology

/-- The space Cb(X, ℝ) is a metric space (sup metric). -/
def metric_space_Cb (X : Type _) [TopologicalSpace X] :
  MetricSpace (BoundedContinuousFunction X ℝ) := by sorry

/-- Convergence in the sup metric is equivalent to uniform convergence. -/
theorem tendsto_iff_uniform {X : Type _} [TopologicalSpace X] {α : Type _} {u : Filter α}
  {F : α → BoundedContinuousFunction X ℝ} {f : BoundedContinuousFunction X ℝ} :
  Tendsto F u (𝓝 f) ↔ (∀ ε > 0, ∀ᶠ n in u, ∀ x : X, |(⇑(F n) x) - (⇑f x)| < ε) := by sorry

end noncomputable section