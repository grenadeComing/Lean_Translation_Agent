import Mathlib

open Set

variable {n : Nat}

/-- Let U ⊂ ℝ^n be open and f : U → ℝ be differentiable. If f is convex on U, then for all x,y ∈ U and t ∈ [0,1],
    f (t • x + (1 - t) • y) ≤ t * f x + (1 - t) * f y. -/
theorem convex_on_implies_convex_combination {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
  (hU : IsOpen U) (hd : DifferentiableOn ℝ f U) (hconv : ConvexOn ℝ U f) :
  ∀ x y (hx : x ∈ U) (hy : y ∈ U) (t : ℝ) (ht : t ∈ Icc (0 : ℝ) 1),
    f (t • x + (1 - t) • y) ≤ t * f x + (1 - t) * f y := by sorry
