import Mathlib

open Complex

/-- Let V be a finite-dimensional complex inner product space. Let T be a normal linear map on V. Then T has a square root. -/
theorem axler_exercise_7_11 {V : Type*} [NormedAddCommGroup V] [InnerProductSpace Complex V] [FiniteDimensional Complex V]
  (T : V →ₗ[Complex] V) (h : T * (LinearMap.adjoint (T : V →ₗ[Complex] V)) = (LinearMap.adjoint (T : V →ₗ[Complex] V)) * T) :
  ∃ (S : V →ₗ[Complex] V), S * S = T := by sorry
