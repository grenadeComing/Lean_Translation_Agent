import Mathlib

open Set

variable {X : Type _} [TopologicalSpace X]

/-- If y is a reparametrization of x by a continuous strictly increasing map τ : [0,1] → [0,1]
with τ(0)=0, τ(1)=1 and y ∘ τ = x on [0,1], then x is homotopic to y relative to {0,1}.
We state this by giving a homotopy H : [0,1] × [0,1] → X continuous on the square and
fixed on the boundary corresponding to {0,1} in the first coordinate. -/
theorem reparam_homotopic_rel_endpoints
  {x y : ℝ → X} {τ : ℝ → ℝ}
  (hx : ContinuousOn x (Set.Icc 0 1))
  (hy : ContinuousOn y (Set.Icc 0 1))
  (hτ : ContinuousOn τ (Set.Icc 0 1))
  (hmono : StrictMonoOn τ (Set.Icc 0 1))
  (hτ0 : τ 0 = 0) (hτ1 : τ 1 = 1)
  (heq : ∀ t ∈ Set.Icc 0 1, y (τ t) = x t) :
  ∃ (H : ℝ × ℝ → X), ContinuousOn H (Set.Icc 0 1 ×ˢ Set.Icc 0 1) ∧
    (∀ t ∈ Set.Icc 0 1, H (t,0) = x t) ∧ (∀ t ∈ Set.Icc 0 1, H (t,1) = y t) ∧
    (∀ s ∈ Set.Icc 0 1, H (0,s) = x 0) ∧ (∀ s ∈ Set.Icc 0 1, H (1,s) = x 1) := by
  sorry
