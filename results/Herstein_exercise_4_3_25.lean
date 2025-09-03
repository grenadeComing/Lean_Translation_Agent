import Mathlib

open Matrix

/-- Let R be the ring of 2x2 matrices over a field k. Any two-sided ideal of M_2(k) is either 0 or the whole ring. -/
theorem herstein_exercise_4_3_25 {k : Type _} [Field k] :
  ∀ (I : Ideal (Matrix (Fin 2) (Fin 2) k)), I = ⊥ ∨ I = ⊤ := by sorry
