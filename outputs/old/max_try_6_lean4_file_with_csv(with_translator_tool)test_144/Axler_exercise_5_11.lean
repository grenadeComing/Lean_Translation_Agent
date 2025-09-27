import Mathlib

open LinearMap

variable {K : Type*} [Field K]
variable {V : Type*} [AddCommGroup V] [Module K V] [FiniteDimensional K V]

theorem axler_exercise_5_11 (S T : V →ₗ[K] V) (μ : K) :
  (∃ v : V, v ≠ 0 ∧ (S.comp T) v = μ • v) ↔ (∃ w : V, w ≠ 0 ∧ (T.comp S) w = μ • w) := by sorry
