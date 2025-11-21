import Mathlib

/-!
Let M be a smooth manifold and let x : [0,1] → M be a path.  
This states that x is homotopic relative to {0,1} to a smooth path.

The statement below is a formalization of that claim: we work with a manifold
modelled on a normed space over a nontrivially normed field, take a map
x : ℝ → M which is continuous on the closed unit interval Icc (0:ℝ) 1, and
assert the existence of a smooth map y which agrees with x at the endpoints
and is homotopic to x by a homotopy fixed on the endpoints.
-/

open Set

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {H : Type*} [TopologicalSpace H]
variable (I : ModelWithCorners 𝕜 E H)
variable {M : Type*} [TopologicalSpace M] [ChartedSpace H M] [SmoothManifoldWithCorners I M]

/-- A path x : ℝ → M continuous on Icc (0 : ℝ) 1 is homotopic rel {0,1} to a smooth path. -/
lemma path_homotopic_rel_endpoints_to_smooth (x : ℝ → M)
  (hx : ContinuousOn x (Icc (0 : ℝ) 1)) :
  ∃ (y : ℝ → M),
    SmoothOn I y (Icc (0 : ℝ) 1) ∧
    (∃ (H : ℝ × ℝ → M),
      ContinuousOn H (Icc (0 : ℝ) 1 ×ˢ Icc (0 : ℝ) 1) ∧
      (∀ t ∈ Icc (0 : ℝ) 1, H (t, 0) = x t) ∧
      (∀ t ∈ Icc (0 : ℝ) 1, H (t, 1) = y t) ∧
      (∀ s ∈ Icc (0 : ℝ) 1, H (0, s) = x 0) ∧
      (∀ s ∈ Icc (0 : ℝ) 1, H (1, s) = x 1)) := by sorry
