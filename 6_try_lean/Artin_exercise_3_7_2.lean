import Mathlib

variable {F : Type*} [Field F] [Infinite F]
variable {V : Type*} [AddCommGroup V] [Module F V]

/-- A vector space over an infinite field cannot be the union of finitely many proper submodules. -/
theorem Artin_exercise_3_7_2 (s : Finset (Submodule F V))
  (h : ∀ S ∈ s, S ≠ ⊤) : ∃ v : V, ∀ S ∈ s, v ∉ S := by sorry
