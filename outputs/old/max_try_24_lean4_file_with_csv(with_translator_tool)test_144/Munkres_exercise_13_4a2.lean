import Mathlib

open Set

theorem Munkres_exercise_13_4a2 :
  ∃ (t1 t2 : TopologicalSpace (Fin 3)),
    (t1.IsOpen (Set.singleton (0 : Fin 3)) ∨ t2.IsOpen (Set.singleton (0 : Fin 3))) ∧
    (t1.IsOpen (Set.singleton (1 : Fin 3)) ∨ t2.IsOpen (Set.singleton (1 : Fin 3))) ∧
    ¬ (t1.IsOpen (Set.insert (0 : Fin 3) (Set.singleton (1 : Fin 3))) ∨
        t2.IsOpen (Set.insert (0 : Fin 3) (Set.singleton (1 : Fin 3)))) := by
  sorry
