import Mathlib

open Set Finset

variable {n : ℕ}

/-- A closed rectangle in R^n specified by lower and upper corners a and b. -/
def rectangle (a b : Fin n → ℝ) : Set (Fin n → ℝ) :=
  {x | ∀ i, a i ≤ x i ∧ x i ≤ b i}

/-- The (Euclidean) volume of a rectangle as the product of side-lengths. -/
def volume (a b : Fin n → ℝ) : ℝ :=
  (Finset.univ : Finset (Fin n)).prod fun i => (b i - a i)

/-- Let m* denote the outer measure on R^n (defined via countable coverings by open rectangles).
    If R ⊂ R^n is a closed rectangle, then m*(R) = V(R). -/
theorem jirilebl_ra_ch_multivar_int_1938 (mstar : Set (Fin n → ℝ) → ℝ) :
  ∀ (a b : Fin n → ℝ), mstar (rectangle a b) = volume a b := by
  intro a b
  -- proof omitted
  sorry
