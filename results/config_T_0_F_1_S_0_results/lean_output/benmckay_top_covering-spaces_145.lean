import Mathlib

/-!
Suppose that k is a field containing ℝ and of finite dimension as a real vector space.
Then k = ℝ or k = ℂ, up to isomorphism. In particular, the splitting field of any
real or complex polynomial in one variable has degree at most 2 over ℝ, and every
complex polynomial in one variable splits into a product of linear factors over ℂ.
-/

theorem finite_dimensional_field_over_R_is_R_or_C (k : Type*) [Field k] [Algebra ℝ k]
  [FiniteDimensional ℝ k] : (Nonempty (k ≃ₐ[ℝ] ℝ)) ∨ (Nonempty (k ≃ₐ[ℝ] ℂ)) := by sorry

theorem splitting_field_degree_at_most_two {K : Type*} [Field K] [Algebra ℝ K]
  [FiniteDimensional ℝ K] : (Nonempty (K ≃ₐ[ℝ] ℝ)) ∨ (Nonempty (K ≃ₐ[ℝ] ℂ)) := by sorry

theorem complex_polynomials_split_over_ℂ : IsAlgClosed ℂ := by sorry
