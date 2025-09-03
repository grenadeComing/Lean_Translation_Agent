import Mathlib

/-- If C is a connected subspace of X that meets both A and its complement, then C meets the frontier of A. -/
theorem Munkres_exercise_23_6 {X : Type _} [TopologicalSpace X] {A C : Set X}
  (hC : IsConnected C) (h1 : Set.Nonempty (C ∩ A)) (h2 : Set.Nonempty (C ∩ (Aᶜ))) :
  Set.Nonempty (C ∩ frontier A) := by sorry
