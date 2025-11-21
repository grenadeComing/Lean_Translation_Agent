import Mathlib

/-!
Let m* be the outer measure on ℝ^n defined via coverings by countably many open rectangles.
We state the subadditivity property to be proved:
for any two subsets A, B ⊆ ℝ^n,
  m*(A ∪ B) ≤ m*(A) + m*(B).

This file only translates the statement into Lean; the proof is omitted (sorry).
-/

theorem outer_measure_by_open_rectangles_subadditive {n : ℕ}
  (mstar : Set (Fin n → ℝ) → ENNReal)
  (mstar_is_open_rectangle_outer_measure : Prop)
  (h_mstar : mstar_is_open_rectangle_outer_measure)
  (A B : Set (Fin n → ℝ)) :
  mstar (A ∪ B) ≤ mstar A + mstar B := by sorry
