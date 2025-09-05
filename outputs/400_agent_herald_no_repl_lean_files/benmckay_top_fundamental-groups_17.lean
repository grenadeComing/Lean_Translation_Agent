import Mathlib

/-!
Lemma: Reparametrisation of a path gives a homotopic path relative to the endpoints.

We work with maps defined on the unit interval `I := Set.Icc (0 : ℝ) 1`.  If
`x y : ℝ → X` are continuous on `I` and `τ : ℝ → ℝ` is continuous, strictly
increasing on `I`, fixes the endpoints `0` and `1`, maps `I` into itself, and
satisfies `y (τ t) = x t` for all `t ∈ I`, then there exists a continuous homotopy
`H : ℝ × ℝ → X` on `I × I` witnessing that `x` and `y` are homotopic relative to
`{0,1}`.  For brevity we state the existence of such an `H` and its boundary
conditions; the proof is omitted (:= by sorry).
-/

open Set

variable {X : Type*} [TopologicalSpace X]

lemma reparametrization_homotopic_relative_endpoints
  (x y : ℝ → X)
  (hx : ContinuousOn x (Icc (0 : ℝ) 1))
  (hy : ContinuousOn y (Icc (0 : ℝ) 1))
  (τ : ℝ → ℝ)
  (hτ_cont : Continuous τ)
  (hτ_maps : MapsTo τ (Icc (0 : ℝ) 1) (Icc (0 : ℝ) 1))
  (hτ_strict : StrictMonoOn τ (Icc (0 : ℝ) 1))
  (hτ0 : τ 0 = 0)
  (hτ1 : τ 1 = 1)
  (hxy : ∀ t ∈ Icc (0 : ℝ) 1, y (τ t) = x t) :
  ∃ (H : ℝ × ℝ → X),
    ContinuousOn H (Icc (0 : ℝ) 1 ×ˢ Icc (0 : ℝ) 1) ∧
    (∀ t ∈ Icc (0 : ℝ) 1, H (t, 0) = x t) ∧
    (∀ t ∈ Icc (0 : ℝ) 1, H (t, 1) = y t) ∧
    (∀ s ∈ Icc (0 : ℝ) 1, H (0, s) = x 0) ∧
    (∀ s ∈ Icc (0 : ℝ) 1, H (1, s) = x 1) := by sorry
