import Mathlib

/-
Suppose V is a complex inner-product space and T ∈ L(V) is a normal operator
such that T^9 = T^8. Prove that T is self-adjoint and T^2 = T.
-/

theorem Axler_exercise_7_10 {V : Type*} [InnerProductSpace ℂ V] {T : V →ₗ[ℂ] V}
  (h_normal : IsNormal T) (h : T ^ 9 = T ^ 8) :
  IsSelfAdjoint T ∧ T ^ 2 = T := by sorry
