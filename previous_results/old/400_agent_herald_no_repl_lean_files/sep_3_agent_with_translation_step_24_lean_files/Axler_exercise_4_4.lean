import Mathlib

open Polynomial

theorem Axler_exercise_4_4 {m : ℕ} {p : Polynomial ℂ} (hp : p ≠ 0) (hdeg : p.natDegree = m) :
  (∃ xs : Fin m → ℂ, p = C (p.leadingCoeff) * ∏ i, (X - C (xs i))) ↔
  (∀ z : ℂ, ¬ (p.eval z = 0 ∧ (derivative p).eval z = 0)) := by
  sorry
