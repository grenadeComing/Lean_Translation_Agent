import Mathlib

/-!
Statement: For n ≥ 3, the center of the symmetric group on n letters is trivial.
We express the center as the set of permutations commuting with all permutations.
-/

theorem symmetric_group_center_trivial {n : Nat} (hn : n ≥ 3) :
  {σ : Perm (Fin n) | ∀ τ : Perm (Fin n), σ * τ = τ * σ} = {1 : Perm (Fin n)} := by sorry
