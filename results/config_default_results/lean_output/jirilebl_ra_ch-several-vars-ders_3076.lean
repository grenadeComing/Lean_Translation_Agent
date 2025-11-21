import Mathlib

/-- Let U ⊂ ℝ^n be open and let f : U → ℝ be differentiable. Show that if f is convex on U, then for all x,y ∈ U and t ∈ [0,1], f(tx+(1-t)y) ≤ t f(x) + (1-t) f(y). -/
theorem convex_on_convex_comb_le {n : Nat} {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
  (hU : IsOpen U) (hd : DifferentiableOn ℝ f U) (hconv : ConvexOn ℝ U f) :
  ∀ x y, x ∈ U → y ∈ U → ∀ t : ℝ, t ∈ Set.Icc (0 : ℝ) 1 → f (t • x + (1 - t) • y) ≤ t * f x + (1 - t) * f y := by sorry
