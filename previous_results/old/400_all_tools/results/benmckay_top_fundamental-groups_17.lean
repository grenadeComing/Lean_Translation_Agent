import Mathlib

open Set

/-- Let X be a topological space and let x,y : ℝ → X be paths on the unit interval.
Suppose there exists a continuous, strictly increasing map τ : ℝ → ℝ with τ(0)=0, τ(1)=1,
τ maps the unit interval to itself and y ∘ τ = x on the unit interval (so y is a reparametrization of x).
The conclusion: there exists a homotopy H on the square I × I (where I = [0,1]) between x and y
relative to the endpoints. The proof is omitted (:= by sorry).
-/

theorem reparam_homotopic_relative_endpoints {X : Type} [TopologicalSpace X]
  {x y : ℝ → X} (τ : ℝ → ℝ)
  (hτ_cont : Continuous τ)
  (hτ_mono : StrictMonoOn τ (Set.Icc (0 : ℝ) (1 : ℝ)))
  (hτ_image : τ '' (Set.Icc (0 : ℝ) (1 : ℝ)) ⊆ Set.Icc (0 : ℝ) (1 : ℝ))
  (hτ0 : τ 0 = 0) (hτ1 : τ 1 = (1 : ℝ))
  (hx : ContinuousOn x (Set.Icc (0 : ℝ) (1 : ℝ))) (hy : ContinuousOn y (Set.Icc (0 : ℝ) (1 : ℝ)))
  (hyx : ∀ t ∈ Set.Icc (0 : ℝ) (1 : ℝ), y (τ t) = x t) :
  ∃ H : ℝ × ℝ → X,
    ContinuousOn H (Set.prod (Set.Icc (0 : ℝ) (1 : ℝ)) (Set.Icc (0 : ℝ) (1 : ℝ))) ∧
    (∀ t ∈ Set.Icc (0 : ℝ) (1 : ℝ), H (t, 0) = x t) ∧
    (∀ t ∈ Set.Icc (0 : ℝ) (1 : ℝ), H (t, 1) = y t) ∧
    (∀ s ∈ Set.Icc (0 : ℝ) (1 : ℝ), H (0, s) = x 0) ∧
    (∀ s ∈ Set.Icc (0 : ℝ) (1 : ℝ), H (1, s) = x 1) := by
  exact by sorry
