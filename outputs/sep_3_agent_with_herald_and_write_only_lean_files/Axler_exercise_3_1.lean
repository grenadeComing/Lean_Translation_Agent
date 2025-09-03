import Mathlib

variables {𝕜 : Type*} [Field 𝕜] {V : Type*} [AddCommGroup V] [Module 𝕜 V]

/--
Exercise: Show that every linear map from a one-dimensional vector space to itself
is multiplication by some scalar.
We assume the 1-dimensionality by the existence of a nonzero vector v0 such that
every vector is a scalar multiple of v0.
-/
theorem Axler_exercise_3_1
  (h : ∃ (v0 : V), v0 ≠ 0 ∧ ∀ v : V, ∃ a : 𝕜, v = a • v0)
  (T : V →ₗ[𝕜] V) :
  ∃ a : 𝕜, ∀ v : V, T v = a • v := by sorry
