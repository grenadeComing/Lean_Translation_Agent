import Mathlib

/-
Let U ⊂ ℝ^n be open and let f : U → ℝ be differentiable. Show that if f is convex on U,
then for all x,y ∈ U and t ∈ [0,1], f(tx+(1-t)y) ≤ t f(x) + (1-t) f(y).
(This file gives a Lean4 translation of that statement; proof omitted.)
-/

variable {n : ℕ}

variable {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}

theorem convex_on_implies_pointwise_convex (hU : IsOpen U)
  (h_diff : DifferentiableOn ℝ f U) (hconv : ConvexOn ℝ U f) :
  ∀ x y, x ∈ U → y ∈ U → ∀ t ∈ Icc (0 : ℝ) 1, f (t • x + (1 - t) • y) ≤ t * f x + (1 - t) * f y := by sorry
