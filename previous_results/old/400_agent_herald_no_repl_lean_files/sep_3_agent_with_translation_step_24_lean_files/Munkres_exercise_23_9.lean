import Mathlib

open Set

/-- Let A be a proper subset of X, and B a proper subset of Y. If X and Y are connected,
    then (X × Y) \ (A × B) is connected. We express the subspace as the subtype
    {p : X × Y | p ∉ A ×ˢ B}. -/
theorem Munkres_exercise_23_9 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  {A : Set X} {B : Set Y} (hA : A ≠ univ) (hB : B ≠ univ)
  (hX : ConnectedSpace X) (hY : ConnectedSpace Y) :
  ConnectedSpace ({p : X × Y // p ∉ A ×ˢ B}) := by sorry
