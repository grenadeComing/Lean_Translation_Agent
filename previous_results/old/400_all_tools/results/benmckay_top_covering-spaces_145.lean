import Mathlib

/-!
# Real finite extensions are R or C, and Complex is algebraically closed (statements only)

This file states the classical facts:
- If `k` is a field equipped with an `ℝ`-algebra structure and is finite-dimensional over `ℝ`,
  then `k` is isomorphic (as an `ℝ`-algebra) to `ℝ` or to `ℂ`.
- `ℂ` is algebraically closed, i.e. every polynomial over `ℂ` splits as a product of linear factors.

Proofs are omitted (`:= by sorry`).
-/

/-- If `k` is a field and a finite-dimensional `ℝ`-algebra, then `k ≃ₐ[ℝ] ℝ` or `k ≃ₐ[ℝ] ℂ`, up to `Nonempty`.
This is the algebraic formulation of the statement that the only finite extensions of `ℝ` are `ℝ` and `ℂ`.
-/
theorem real_finite_field_eq_R_or_C {k : Type _} [Field k] [Algebra Real k] [FiniteDimensional Real k] :
  Nonempty (k ≃ₐ[Real] Real) ∨ Nonempty (k ≃ₐ[Real] Complex) := by sorry

/-- `ℂ` is algebraically closed: every polynomial over `ℂ` splits as a product of linear factors. -/
theorem complex_is_algebraically_closed : IsAlgClosed Complex := by sorry
