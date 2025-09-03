import Mathlib

/-- Exercise: A × B is an abelian group iff A and B are abelian.
We state this as existence of group instances: Nonempty (CommGroup (G × H)) ↔
(Nonempty (CommGroup G) ∧ Nonempty (CommGroup H)). -/
theorem Dummit_Foote_exercise_1_1_29 (G H : Type*) :
  Nonempty (CommGroup (G × H)) ↔ (Nonempty (CommGroup G) ∧ Nonempty (CommGroup H)) := by sorry
