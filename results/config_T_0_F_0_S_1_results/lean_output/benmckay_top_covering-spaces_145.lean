import Mathlib

/-
Suppose that k is a field containing ℝ and of finite dimension as a real vector space.
Then k = ℝ or k = ℂ, up to isomorphism.
In particular, the splitting field of any real or complex polynomial in one variable has
degree at most 2 over ℝ, and every complex polynomial in one variable splits into a
product of linear factors over ℂ.

The following statements formalise these facts as Lean declarations (statements only,
proofs are omitted with `sorry`).
-/

lemma field_finite_dim_over_R_is_R_or_C (k : Type*) [Field k] [Algebra ℝ k]
  [FiniteDimensional ℝ k] (hinj : Function.Injective (algebraMap ℝ k)) :
  (Nonempty (k ≃ₐ[ℝ] ℝ)) ∨ (Nonempty (k ≃ₐ[ℝ] ℂ)) := by sorry

/-- If k is an algebraic, finite extension of ℝ (so in particular the splitting field
    of any real polynomial), then k is isomorphic to ℝ or to ℂ as an ℝ-algebra. -/
lemma algebraic_finite_extension_of_R_is_R_or_C (k : Type*) [Field k] [Algebra ℝ k]
  [FiniteDimensional ℝ k] [Algebra.IsAlgebraic ℝ k] (hinj : Function.Injective (algebraMap ℝ k)) :
  (Nonempty (k ≃ₐ[ℝ] ℝ)) ∨ (Nonempty (k ≃ₐ[ℝ] ℂ)) := by sorry

/-- The complex numbers are algebraically closed: every nonconstant polynomial over ℂ
    splits as a product of linear factors. -/
lemma complex_is_alg_closed : IsAlgClosed ℂ := by sorry
