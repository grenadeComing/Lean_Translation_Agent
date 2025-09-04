import Mathlib

/-
Suppose that k is a field containing ℝ and of finite dimension as a real vector space.
Then k = ℝ or k = ℂ, up to isomorphism.

In particular, the splitting field of any real or complex polynomial in one variable has degree at most 2 over ℝ,
and every complex polynomial in one variable splits into a product of linear factors over ℂ.
-/

open Complex

theorem finite_dimensional_field_over_R_is_R_or_C (k : Type*) [Field k] [Algebra Real k]
  [FiniteDimensional Real k] (h_inj : Function.Injective (algebraMap Real k)) :
  Nonempty (k ≃ₐ[Real] Real) ∨ Nonempty (k ≃ₐ[Real] Complex) :=
by sorry

/-- Corollary: If K is a finite algebraic extension of ℝ then its (Cardinal) rank is ≤ 2. -/
theorem finite_algebraic_extension_degree_le_two (K : Type*) [Field K] [Algebra Real K]
  [FiniteDimensional Real K] :
  Module.rank Real K ≤ 2 :=
by sorry

/-- Corollary: ℂ is algebraically closed (every polynomial over ℂ splits). -/
theorem complex_is_alg_closed : IsAlgClosed Complex :=
by sorry
