import Mathlib

/-- If σ and τ are permutations of a type α which disturb no common element
    (i.e. for every x, at least one of σ or τ fixes x), and their composition
    is the identity, then both σ and τ are the identity permutation. -/
theorem herstein_exercise_3_2_21 {α : Type _} (σ τ : Equiv.Perm α)
  (h_disjoint : ∀ x : α, σ x = x ∨ τ x = x)
  (h_comp : σ.trans τ = Equiv.refl α) :
  σ = Equiv.refl α ∧ τ = Equiv.refl α := by sorry
