import Mathlib

/-- For n ≥ 3, the center of the symmetric group Sym n is trivial: any permutation commuting with
all permutations is the identity. -/
theorem sym_group_center_trivial (n : ℕ) (hn : 3 ≤ n) :
  ∀ (σ : Equiv.Perm (Fin n)), (∀ τ : Equiv.Perm (Fin n), σ.trans τ = τ.trans σ) → σ = Equiv.refl (Fin n) := by sorry
