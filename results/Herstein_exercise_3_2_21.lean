import Mathlib

/-!
Exercise: If σ and τ are two permutations that disturb no common element and σ ∘ τ = id,
prove that σ = τ = id.
-/

open Equiv

lemma herstein_exercise_3_2_21 {α : Sort _} (σ τ : α ≃ α)
  (h_disjoint : ∀ x : α, σ x = x ∨ τ x = x)
  (h_comp : σ.trans τ = Equiv.refl α) : σ = Equiv.refl α ∧ τ = Equiv.refl α := by sorry
