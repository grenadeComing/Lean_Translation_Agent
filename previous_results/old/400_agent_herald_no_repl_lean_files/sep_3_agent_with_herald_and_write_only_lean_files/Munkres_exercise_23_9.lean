import Mathlib

variables {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
variable {A : Set X} {B : Set Y}

/-- Exercise (Munkres 23.9): Let A be a proper subset of X, and B a proper subset of Y.
    If X and Y are connected, then (X × Y) \ (A × B) is connected. -/
theorem Munkres_exercise_23_9 (hA : A ≠ (univ : Set X)) (hB : B ≠ (univ : Set Y))
  (hX : ConnectedSpace X) (hY : ConnectedSpace Y) :
  IsConnected ((univ : Set (X × Y)) \ (A ×ˢ B)) := by sorry
