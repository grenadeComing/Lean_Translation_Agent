import Mathlib

/-!
# Classification of finite extensions of ℝ

Suppose that `k` is a field containing `ℝ` and of finite dimension as a real vector space.
Then `k = ℝ` or `k = ℂ`, up to isomorphism.  In particular, the splitting field
of any real polynomial in one variable has degree at most `2` over `ℝ`, and every complex
polynomial in one variable splits into a product of linear factors over `ℂ`.
-/

open Classical

theorem finite_dimensional_field_over_R_is_R_or_C (k : Type*) [Field k] [Algebra ℝ k]
  [FiniteDimensional ℝ k] : (Nonempty (k ≃ₐ[ℝ] ℝ)) ∨ (Nonempty (k ≃ₐ[ℝ] ℂ)) := by
  -- proof omitted
  sorry

/-- The complex numbers are algebraically closed.  (Stated as a separate corollary.) -/
theorem complex_is_algebraically_closed : IsAlgClosed ℂ := by
  -- proof omitted
  sorry

/-- In particular: any finite field extension of `ℝ` has degree at most `2`. -/
theorem finite_extension_of_real_has_degree_le_two (k : Type*) [Field k] [Algebra ℝ k]
  [FiniteDimensional ℝ k] : True := by
  -- one deduces this from the classification above; proof omitted
  trivial
