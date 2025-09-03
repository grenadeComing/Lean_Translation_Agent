import Mathlib

open Set

variable {X : Type _} [TopologicalSpace X]

/-- If C is a connected subspace of X and C meets both A and its complement, then C meets the boundary of A. -/
theorem Munkres_exercise_23_6 {A C : Set X}
  (hC : IsConnected C) (h1 : (C ∩ A).Nonempty) (h2 : (C ∩ (X \ A)).Nonempty) :
  (C ∩ frontier A).Nonempty := by sorry
