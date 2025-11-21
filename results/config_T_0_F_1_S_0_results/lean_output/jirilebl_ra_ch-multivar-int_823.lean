import Mathlib

open Set

variable {n : ℕ}

/-- The axis-aligned closed box in R^n determined by endpoints a and b. -/
def box (a b : Fin n → ℝ) : Set (Fin n → ℝ) := { x | ∀ i, a i ≤ x i ∧ x i ≤ b i }

/-- A closed rectangle with one side of length 0: it is a product of closed intervals [a_i, b_i]
    with a_j = b_j for some coordinate j. -/
def IsClosedRectangleWithZeroSide (R : Set (Fin n → ℝ)) : Prop :=
  ∃ a b : Fin n → ℝ, (∀ i, a i ≤ b i) ∧ R = box a b ∧ ∃ j, a j = b j

/-- Main statement: if R is a closed rectangle in R^n with one side of length 0, then every bounded
    function on R is Riemann integrable and its integral is 0.

    We treat the notions of integrability and the integral as parameters. -/
theorem bounded_function_on_degenerate_rectangle_integrable_zero
  (IsRiemannIntegrableOn : ((Fin n → ℝ) → ℝ) → Set (Fin n → ℝ) → Prop)
  (RiemannIntegral : ((Fin n → ℝ) → ℝ) → Set (Fin n → ℝ) → ℝ)
  (R : Set (Fin n → ℝ)) (hR : IsClosedRectangleWithZeroSide R) :
  ∀ f : (Fin n → ℝ) → ℝ, (∃ M, ∀ x ∈ R, |f x| ≤ M) →
    IsRiemannIntegrableOn f R ∧ RiemannIntegral f R = 0 := by sorry
