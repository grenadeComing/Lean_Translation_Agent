import Mathlib
open Polynomial Bornology Complex
open scoped ComplexConjugate

/-- Suppose that k is a field containing R and of finite dimension as a real vector space. Then k = R or k = C, up to isomorphism. In particular, the splitting field of any real or complex polynomial in one variable has degree at most 2 over R, and every complex polynomial in one variable splits into a product of linear factors over C. -/
theorem is_real_or_complex (k : Type*) [Field k] [Algebra ℝ k] [FiniteDimensional ℝ k] :
    (Nonempty (k ≃ₐ[ℝ] ℝ)) ∨ (Nonempty (k ≃ₐ[ℝ] ℂ)) := by sorry
