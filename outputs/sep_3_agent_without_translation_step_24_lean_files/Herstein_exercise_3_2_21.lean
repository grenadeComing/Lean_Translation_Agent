import Mathlib

/--
If σ, τ are two permutations that disturb no common element and σ ∘ τ = id,
then σ = τ = id.
We formalize "disturb no common element" as ∀ x, σ x = x ∨ τ x = x.
-/
theorem herstein_exercise_3_2_21 {α : Type _} (σ τ : α ≃ α)
  (h_disj : ∀ x, σ x = x ∨ τ x = x)
  (h_mul : σ.trans τ = Equiv.refl α) : σ = Equiv.refl α ∧ τ = Equiv.refl α := by sorry
