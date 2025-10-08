import Mathlib

open Set
open MeasureTheory
open scoped ENNReal

variable {n : ℕ}

-- Placeholder predicate saying that `m` is the outer measure obtained by covering sets by countably many open rectangles.
def is_outer_measure_from_open_rectangles (m : Set (Fin n → ℝ) → ENNReal) : Prop :=
  True

-- The closed rectangle with endpoints `a` and `b` (pointwise interval in the product order).
def closed_rectangle (a b : Fin n → ℝ) : Set (Fin n → ℝ) :=
  Set.Icc a b

/-- If m is the outer measure coming from coverings by open rectangles, then on a closed
rectangle [a,b] we have m([a,b]) = ∏ (b_i - a_i). -/
theorem outer_measure_eq_volume_on_closed_rectangle
  (m : Set (Fin n → ℝ) → ENNReal)
  (hm : is_outer_measure_from_open_rectangles m)
  (a b : Fin n → ℝ)
  (hab : ∀ i, a i ≤ b i) :
  m (closed_rectangle a b) = Finset.univ.prod (fun i => ENNReal.ofReal (b i - a i)) := by sorry
