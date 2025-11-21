import Mathlib

/-- Suppose that k is a field containing ℝ and of finite dimension as a real vector space.

Then k is (as an ℝ-algebra) isomorphic to ℝ or to ℂ.

In particular, the splitting field of any real or complex polynomial in one variable has degree at most 2 over ℝ, and every complex polynomial in one variable splits into a product of linear factors over ℂ. -/
lemma finite_dimensional_field_over_R_is_R_or_C (k : Type*) [Field k] [Algebra ℝ k] [FiniteDimensional ℝ k] :
  Nonempty (k ≃ₐ[ℝ] ℝ) ∨ Nonempty (k ≃ₐ[ℝ] ℂ) := by sorry
