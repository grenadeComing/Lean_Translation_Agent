import Mathlib

theorem center_symm_trivial {n : Nat} (hn : 3 ≤ n) :
  {σ : Equiv.Perm (Fin n) | ∀ τ : Equiv.Perm (Fin n), σ.trans τ = τ.trans σ} = {Equiv.refl (Fin n)} := by
  sorry
