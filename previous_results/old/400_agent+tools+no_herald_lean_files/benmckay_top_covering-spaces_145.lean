import Mathlib

/-!
Translate: Suppose that k is a field containing ℝ and of finite dimension as a real vector space.
Then k = ℝ or k = ℂ, up to isomorphism. In particular, the splitting field of any real or
complex polynomial in one variable has degree at most 2 over ℝ, and every complex polynomial
in one variable splits into a product of linear factors over ℂ.
-/

open Algebra

/-- If k is a field and a finite-dimensional ℝ-algebra, then k is isomorphic (as an ℝ-algebra)
    to ℝ or to ℂ. -/
theorem finite_dimensional_real_field_eq_R_or_C (k : Type*) [Field k] [Algebra ℝ k]
  [FiniteDimensional ℝ k] :
  (Nonempty (AlgEquiv ℝ k ℝ)) ∨ (Nonempty (AlgEquiv ℝ k Complex)) := by
  sorry

/-- Corollary (formalized weak form): any finite-dimensional field extension of ℝ is ℝ or ℂ
    (as an ℝ-algebra). This implies splitting fields of real polynomials have degree ≤ 2. -/
theorem finite_dim_field_extension_is_R_or_C (K : Type*) [Field K] [Algebra ℝ K]
  [FiniteDimensional ℝ K] :
  (Nonempty (AlgEquiv ℝ K ℝ)) ∨ (Nonempty (AlgEquiv ℝ K Complex)) := by
  sorry

/-- Complex is algebraically closed (statement only). -/
theorem complex_is_algebraically_closed : IsAlgClosed Complex := by
  sorry
