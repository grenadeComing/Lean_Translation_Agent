import Mathlib

variables {n : Nat} (mstar : Set (Fin n → Real) → Real) (R : Fin n → Set (Fin n → Real))
  (IsOpenRectangle : Set (Fin n → Real) → Prop) (IsOuterMeasure : (Set (Fin n → Real) → Real) → Prop)

theorem outer_measure_additive_on_disjoint_open_rectangles
  (h_outer : IsOuterMeasure mstar)
  (h_rect : ∀ i : Fin n, IsOpenRectangle (R i))
  (h_disjoint : Pairwise fun i j => Disjoint (R i) (R j)) :
  mstar (⋃ i : Fin n, R i) = Finset.univ.sum fun i => mstar (R i) := by sorry