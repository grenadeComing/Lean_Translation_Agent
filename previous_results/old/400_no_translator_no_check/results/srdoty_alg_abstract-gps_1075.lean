import Mathlib

open Equiv
open Set

/-!
Let n ≥ 3. Prove that the center Z(Sym_n) of the symmetric group on n letters is trivial.
We state this for Perm (Fin n), the group of permutations of fin n.
-/

theorem center_perm_fin_trivial (n : ℕ) (hn : 3 ≤ n) :
  {g : Perm (Fin n) | ∀ h : Perm (Fin n), g * h = h * g} = (singleton (1 : Perm (Fin n))) := by
  sorry
