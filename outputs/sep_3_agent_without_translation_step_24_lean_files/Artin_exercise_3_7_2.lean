import Mathlib

variable {F : Type*} [Field F]
variable {V : Type*} [AddCommGroup V] [Module F V]

/-- Let V be a vector space over an infinite field F. V is not the union of finitely many proper subspaces. -/
theorem Artin_exercise_3_7_2 (n : Nat) (s : Fin n → Submodule F V) (h : ∀ i, s i ≠ ⊤) :
  ∃ v : V, ∀ i, v ∉ s i := by
  -- proof omitted
  sorry
