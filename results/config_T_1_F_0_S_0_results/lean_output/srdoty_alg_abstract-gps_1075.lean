import Mathlib

/-- Let n ≥ 3. Prove that the center Z(Sym_n) of the symmetric group on n letters is trivial. -/
theorem sym_center_trivial {n : Nat} (hn : 3 ≤ n) :
  ∀ σ : Equiv.Perm (Fin n), (∀ τ : Equiv.Perm (Fin n), σ * τ = τ * σ) → σ = 1 := by sorry