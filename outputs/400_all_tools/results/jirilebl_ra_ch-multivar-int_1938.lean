import Mathlib

open Set

/-- The closed rectangle (box) in R^n with endpoints a and b. -/
def closed_box {n : ℕ} (a b : Fin n → ℝ) : Set (Fin n → ℝ) :=
  { x | ∀ i, a i ≤ x i ∧ x i ≤ b i }

/-- The volume of the rectangle defined as the product of side lengths. -/
def box_volume {n : ℕ} (a b : Fin n → ℝ) : ℝ :=
  ∏ i, (b i - a i)

/-- Let mstar denote an outer measure on R^n. If R is a closed rectangle, then m*(R) = V(R). -/
theorem outer_measure_closed_box {n : ℕ} (mstar : Set (Fin n → ℝ) → ENNReal) (a b : Fin n → ℝ)
  (h : ∀ i, a i ≤ b i) :
  mstar (closed_box (a := a) (b := b)) = ENNReal.ofReal (box_volume (a := a) (b := b)) := by sorry
