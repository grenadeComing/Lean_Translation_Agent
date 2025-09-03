import Mathlib

variable {X : Type _} [TopologicalSpace X]

theorem Munkres_exercise_23_6 (A C : Set X) (hC : IsConnected C)
  (h1 : (C ∩ A).Nonempty) (h2 : (C ∩ Aᶜ).Nonempty) :
  (C ∩ frontier A).Nonempty := by
  sorry
