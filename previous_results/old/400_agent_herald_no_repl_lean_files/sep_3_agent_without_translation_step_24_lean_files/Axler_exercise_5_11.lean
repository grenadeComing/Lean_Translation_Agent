import Mathlib

/-!
Axler, Exercise 5.11: If S, T ∈ L(V), then ST and TS have the same eigenvalues.
We state this as: for every scalar c, c is an eigenvalue of S ∘ T iff it is an eigenvalue of T ∘ S.
No proof is provided (use `:= by sorry`).
-/

variable {K : Type*} [Field K]
variable {V : Type*} [AddCommGroup V] [Module K V] [FiniteDimensional K V]

open LinearMap

theorem Axler_exercise_5_11 (S T : V →ₗ[K] V) :
  ∀ c : K, (∃ v : V, v ≠ 0 ∧ (S.comp T) v = c • v) ↔ (∃ w : V, w ≠ 0 ∧ (T.comp S) w = c • w) := by sorry
