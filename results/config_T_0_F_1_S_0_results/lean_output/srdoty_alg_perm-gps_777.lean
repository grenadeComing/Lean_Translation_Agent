import Mathlib

theorem sn_generated_by_adjacent_transpositions {n : ℕ} (hn : 2 ≤ n) :
  Subgroup.closure (Set.range (fun j : Fin (n - 1) => Equiv.swap (Fin.castSucc j) (Fin.succ j)))
  = (⊤ : Subgroup (Equiv.Perm (Fin (n - 1 + 1)))) := by sorry
