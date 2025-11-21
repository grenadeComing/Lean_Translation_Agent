import Mathlib

-- Statement: Let m* denote the outer measure on ℝ^n (defined via coverings by
-- countably many open rectangles). Show that if R ⊂ ℝ^n is a closed rectangle,
-- then m*(R) = V(R), where V(R) is the volume of R.

open Set

variable {n : ℕ}

/-- The volume of the closed rectangle Icc a b is the product of side lengths. -/
def volume (a b : Fin n → ℝ) : ℝ :=
  Finset.univ.prod fun i => (b i - a i)

/-- Formal statement: for the outer measure m_star on ℝ^n (defined via countable coverings
by open rectangles), the measure of a closed rectangle Icc a b equals its volume.
This is stated without proof. -/
theorem outer_measure_closed_rectangle_eq_volume (m_star : Set (Fin n → ℝ) → ℝ)
  {a b : Fin n → ℝ} (h : ∀ i, a i ≤ b i) (R : Set (Fin n → ℝ)) (hR : R = Icc a b) :
  m_star R = volume a b := by sorry
