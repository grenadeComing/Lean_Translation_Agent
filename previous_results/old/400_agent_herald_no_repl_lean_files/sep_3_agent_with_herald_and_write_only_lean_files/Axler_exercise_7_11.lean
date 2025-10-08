import Mathlib

/-!
# Axler Exercise 7.11

Suppose V is a complex inner-product space. Every normal operator on V has a square root.
-/

theorem Axler_exercise_7_11 {V : Type _} [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]
  (T : V →ₗ[ℂ] V) (h : IsNormal T) :
  ∃ S : V →ₗ[ℂ] V, S.comp S = T := by sorry
