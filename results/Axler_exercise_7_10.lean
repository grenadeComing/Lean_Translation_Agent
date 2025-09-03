import Mathlib

/-- Suppose V is a complex inner-product space and T ∈ 𝓛(V) is a normal operator such that
    T^9 = T^8. Then T is self-adjoint and T^2 = T. -/
theorem Axler_exercise_7_10 {V : Type} [NormedAddCommGroup V] [InnerProductSpace Complex V]
  [CompleteSpace V] (T : V →L[Complex] V)
  (h_comm : Commute T (ContinuousLinearMap.adjoint T)) (h_pow : T ^ 9 = T ^ 8) :
  IsSelfAdjoint T ∧ T ^ 2 = T := by sorry
