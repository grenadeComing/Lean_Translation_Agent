import Mathlib
open Polynomial

/-- Suppose p ∈ P(ℂ) has degree m. Prove that p has m distinct roots if and only if p and its derivative p' have no roots in common. -/
theorem Axler_exercise_4_4 {p : Polynomial ℂ} {m : ℕ} (hdeg : p.natDegree = m) :
  (∃ xs : Fin m → ℂ, Function.Injective xs ∧ p = C p.leadingCoeff * ∏ i, (X - C (xs i))) ↔
  (∀ z, p.eval z = 0 → p.derivative.eval z ≠ 0) := by sorry
