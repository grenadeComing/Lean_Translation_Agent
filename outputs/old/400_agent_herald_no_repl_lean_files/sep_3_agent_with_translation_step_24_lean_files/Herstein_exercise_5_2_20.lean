import Mathlib

/-- Let V be a vector space over an infinite field F. Then V is not the union of finitely many proper submodules. -/
theorem herstein_exercise_5_2_20 {F : Type*} [Field F] [Infinite F] {V : Type*} [AddCommGroup V] [Module F V] :
  ∀ (n : ℕ) (s : Fin n → Submodule F V), (∀ i, s i ≠ ⊤) → ∃ v : V, ∀ i : Fin n, v ∉ (s i : Set V) := by
  sorry
