import Mathlib

theorem herstein_exercise_3_2_21 {α : Type _} (σ τ : α ≃ α)
  (h_disjoint : ∀ x, σ x = x ∨ τ x = x)
  (h_mul : σ.trans τ = Equiv.refl α) : σ = Equiv.refl α ∧ τ = Equiv.refl α := by sorry
