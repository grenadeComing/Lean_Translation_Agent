import Mathlib

/--
Given a group `G`, a natural number `n` and a field `F`, any permutation representation
`δ : G → Equiv.Perm (Fin n)` gives rise to a matrix representation `ρ : G → GL (Fin n) F` by
sending `g : G` to the permutation matrix whose `(i,j)`-entry is `1` if `δ g j = i` and `0`
otherwise.
-/
theorem permutation_representation_to_matrix_rep {G : Type _} [Group G] (n : ℕ) (F : Type _)
  [Field F] [DecidableEq (Fin n)] [Fintype (Fin n)] :
  ∀ (δ : G → Equiv.Perm (Fin n)),
    ∃ ρ : G → GL (Fin n) F, ∀ g, (ρ g : Matrix (Fin n) (Fin n) F) = fun i j => if (δ g) j = i then (1 : F) else 0 := by
  sorry
