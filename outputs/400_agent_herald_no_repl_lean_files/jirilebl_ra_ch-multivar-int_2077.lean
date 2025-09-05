import Mathlib

open MeasureTheory Set ENNReal

/-!
Let m* be the outer measure on ℝ^n defined via coverings by countably many open rectangles.
Prove that for any two subsets A, B ⊆ ℝ^n, we have m*(A ∪ B) ≤ m*(A) + m*(B).
This is the usual subadditivity property of an outer measure.
-/

theorem mstar_subadditive_rectangles {n : ℕ} (mstar : MeasureTheory.OuterMeasure (Fin n → ℝ))
  (A B : Set (Fin n → ℝ)) :
  mstar (A ∪ B) ≤ mstar A + mstar B := by sorry
