import Mathlib

/-!
We state the usual convexity inequality for a function f on U ⊆ ℝ^n.
We assume differentiability and convexity on U (the differentiability hypothesis is unused
for this simple implication, but included to match the statement).
-/

variable {n : ℕ} (U : Set (Fin n → ℝ)) (f : (Fin n → ℝ) → ℝ)

theorem convex_on_pointwise_combination
  (hU_open : IsOpen U)
  (hdiff : DifferentiableOn ℝ f U)
  (hconv : ConvexOn ℝ U f) :
  ∀ x y, x ∈ U → y ∈ U → ∀ t : ℝ, t ∈ Set.Icc (0 : ℝ) 1 → f (t • x + (1 - t) • y) ≤ t * f x + (1 - t) * f y :=
  by sorry
