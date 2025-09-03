import Mathlib

/-!
Exercise 11.1.13 (Dummit & Foote): As vector spaces over Q, R^n ≅ R for all n ∈ Z^+.
We state this as: for every n > 0, there exists a ℚ-linear equivalence between (Fin n → ℝ) and ℝ.
Proof omitted.
-/

theorem Dummit_Foote_exercise_11_1_13 (n : ℕ) (hn : 0 < n) : Nonempty ((Fin n → ℝ) ≃ₗ[ℚ] ℝ) := by sorry
