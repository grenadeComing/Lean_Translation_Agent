import Mathlib

/-!
Finite-dimensional real fields are R or C (statements only).
-/

theorem real_finite_dimensional_field_eq_R_or_C {k : Type*} [Field k] [Algebra Real k]
  [FiniteDimensional Real k] : (k ≃ₐ[Real] Real) ∨ (k ≃ₐ[Real] Complex) := by sorry

theorem finite_dimensional_real_field_finrank_le_two {k : Type*} [Field k] [Algebra Real k]
  [FiniteDimensional Real k] : finrank Real k ≤ 2 := by sorry

theorem complex_polynomial_splits (p : Polynomial Complex) : Polynomial.IsSplit p := by sorry
