import Mathlib

open Set

/-- Let U ⊆ ℝ^n be open and f : ℝ^n → ℝ differentiable on U.
    If f is convex on U then for all x,y ∈ U and t ∈ [0,1],
    f (t • x + (1 - t) • y) ≤ t * f x + (1 - t) * f y. -/
theorem jirilebl_convex_implies_ineq {n : ℕ} {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
  (hU : IsOpen U) (hdiff : DifferentiableOn ℝ f U) (hconv : ConvexOn ℝ U f) :
  ∀ x y, x ∈ U → y ∈ U → ∀ t ∈ Icc (0 : ℝ) 1, f (t • x + (1 - t) • y) ≤ t * f x + (1 - t) * f y :=
by
  sorry
