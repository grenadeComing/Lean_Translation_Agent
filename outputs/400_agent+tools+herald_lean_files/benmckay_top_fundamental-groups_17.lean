import Mathlib

open Set

variable {X : Type*} [TopologicalSpace X]

/-- If x,y : [0,1] → X are continuous paths and τ : [0,1] → [0,1] is continuous, strictly
increasing, τ(0)=0, τ(1)=1 and y ∘ τ = x on the unit interval, then x is homotopic to y
relative to {0,1}.  The homotopy is stated as the existence of a map H : ℝ × ℝ → X
continuous on I × I with the usual endpoint and boundary conditions. -/
theorem homotopic_of_reparam {x y : ℝ → X} (hx : ContinuousOn x (Icc (0 : ℝ) 1))
  (hy : ContinuousOn y (Icc (0 : ℝ) 1))
  (τ : ℝ → ℝ) (hτ_cont : ContinuousOn τ (Icc (0 : ℝ) 1)) (hτ_strict : StrictMonoOn τ (Icc (0 : ℝ) 1))
  (hτ0 : τ 0 = 0) (hτ1 : τ 1 = 1)
  (hreparam : ∀ s ∈ Icc (0 : ℝ) 1, y (τ s) = x s) :
  ∃ H : ℝ × ℝ → X,
    ContinuousOn H (Icc (0 : ℝ) 1 ×ˢ Icc (0 : ℝ) 1) ∧
    (∀ s ∈ Icc (0 : ℝ) 1, H (s, 0) = x s) ∧
    (∀ s ∈ Icc (0 : ℝ) 1, H (s, 1) = y s) ∧
    (∀ t ∈ Icc (0 : ℝ) 1, H (0, t) = x 0) ∧
    (∀ t ∈ Icc (0 : ℝ) 1, H (1, t) = x 1) := by sorry
