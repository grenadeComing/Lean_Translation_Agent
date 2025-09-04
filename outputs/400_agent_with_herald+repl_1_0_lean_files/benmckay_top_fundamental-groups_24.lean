import Mathlib

open Set

theorem path_subdivision {X : Type _} [TopologicalSpace X] {A : Type _}
  (U : A → Set X) (hcover : (⋃ a : A, U a) = set.univ) {x : Real → X}
  (hcont : ContinuousOn x (Set.Icc (0 : Real) 1)) :
  ∃ (n : Nat) (t : Fin (n+1) → Real) (a : Fin n → A),
    t (0 : Fin (n+1)) = 0 ∧ t (Fin.last n) = 1 ∧ (∀ i : Fin n, t i < t (i.succ)) ∧
    (∀ i : Fin n, Set.image x (Set.Icc (t i) (t (i.succ))) ⊆ U (a i)) := by
  sorry
