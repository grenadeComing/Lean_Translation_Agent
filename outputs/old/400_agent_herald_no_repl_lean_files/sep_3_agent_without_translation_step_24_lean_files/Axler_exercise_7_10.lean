import Mathlib

/-
Suppose V is a complex inner-product space and T ∈ L(V) is a normal operator such that T^9 = T^8.
Prove that T is self-adjoint and T^2 = T.
This file states the exercise in Mathlib4/Lean4. The proof is omitted (sorry).
-/

open LinearMap

variable (V : Type*) [NormedAddCommGroup V] [InnerProductSpace Complex V] [FiniteDimensional Complex V]

theorem Axler_exercise_7_10 (T : V →ₗ[Complex] V)
  (h_normal : (T.comp (LinearMap.adjoint T)) = ((LinearMap.adjoint T).comp T))
  (h_pow : T ^ 9 = T ^ 8) :
  (LinearMap.adjoint T = T) ∧ (T ^ 2 = T) := by sorry
