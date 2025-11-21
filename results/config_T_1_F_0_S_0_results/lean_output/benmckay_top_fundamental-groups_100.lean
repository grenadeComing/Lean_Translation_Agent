import Mathlib

open Set

variable {X : Type*} [TopologicalSpace X]

/-- I = [0,1] as a subset of ℝ. -/
def I := Icc (0 : ℝ) 1

/-- Given a continuous path x : ℝ → X defined on [0,1], the concatenation of x with its
    time-reverse is homotopic relative to the endpoints to the constant loop at x 0.

    We state this by producing a continuous homotopy H on [0,1] × [0,1] with the required
    boundary values; no proof is given here. -/
theorem path_concat_reverse_homotopic_to_const
  (x : ℝ → X) (hx : ContinuousOn x (I)) :
  ∃ (H : ℝ × ℝ → X),
    ContinuousOn H (I ×ˢ I) ∧
    ∀ t ∈ I, ∀ s ∈ I,
      H (t, 0) = (if t ≤ (1 / 2 : ℝ) then x (2 * t) else x (2 - 2 * t)) ∧
      H (t, 1) = x 0 ∧
      H (0, s) = x 0 ∧
      H (1, s) = x 0 := by sorry