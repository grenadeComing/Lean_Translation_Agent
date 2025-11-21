import Mathlib

/--
Let X be a topological space and let x,y : [0,1] → X be paths. Suppose there exists a
continuous, strictly increasing map τ : [0,1] → [0,1] with τ(0)=0, τ(1)=1 and y ∘ τ = x
(so y is a reparametrization of x). Then x is homotopic to y relative to {0,1}.
-/

theorem benmckay_top_fundamental_groups_17 {
  X : Type*} [TopologicalSpace X]
  {x y : ℝ → X}
  (hx : ContinuousOn x (Set.Icc (0 : ℝ) (1 : ℝ)))
  (hy : ContinuousOn y (Set.Icc (0 : ℝ) (1 : ℝ)))
  (τ : ℝ → ℝ)
  (hτc : ContinuousOn τ (Set.Icc (0 : ℝ) (1 : ℝ)))
  (hτmono : StrictMono τ)
  (hτ0 : τ 0 = 0)
  (hτ1 : τ 1 = 1)
  (heq : ∀ t ∈ Set.Icc (0 : ℝ) (1 : ℝ), y (τ t) = x t) :
  -- there exists a homotopy H : [0,1] × [0,1] → X continuous on the square,
  -- with H(t,0)=x(t), H(t,1)=y(t) and fixed on the endpoints 0 and 1 for all s
  ∃ (H : ℝ × ℝ → X),
    ContinuousOn H (Set.Icc (0 : ℝ) (1 : ℝ) ×ˢ Set.Icc (0 : ℝ) (1 : ℝ)) ∧
    (∀ t ∈ Set.Icc (0 : ℝ) (1 : ℝ), H (t, 0) = x t) ∧
    (∀ t ∈ Set.Icc (0 : ℝ) (1 : ℝ), H (t, 1) = y t) ∧
    (∀ s ∈ Set.Icc (0 : ℝ) (1 : ℝ), H (0, s) = x 0) ∧
    (∀ s ∈ Set.Icc (0 : ℝ) (1 : ℝ), H (1, s) = x 1) := by sorry
