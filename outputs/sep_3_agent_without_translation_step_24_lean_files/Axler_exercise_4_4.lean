import Mathlib

open Polynomial

/--
Suppose p ∈ P(ℂ) has degree m. Prove that p has m distinct roots if and only if p and its derivative p' have no roots in common.
-/
theorem Axler_exercise_4_4 (p : Polynomial Complex) (m : ℕ) (hp : p.natDegree = m) :
  (p.roots.toFinset.card = m) ↔ (∀ z : Complex, Polynomial.eval z p = 0 → Polynomial.eval z (Polynomial.derivative p) ≠ 0) := by
  sorry
