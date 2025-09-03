import Mathlib

/-!
Exercise: Suppose that S, T ∈ L(V) are such that S T = T S. Prove that
ker(T - λ I) is invariant under S for every λ ∈ F.
-/

theorem axler_exercise_5_4 {F : Type _} [Field F] {V : Type _} [AddCommGroup V] [Module F V]
  (S T : V →ₗ[F] V) (h : S.comp T = T.comp S) :
  ∀ (c : F) (v : V), (T - c • (LinearMap.id : V →ₗ[F] V)) v = 0 → (T - c • (LinearMap.id : V →ₗ[F] V)) (S v) = 0 := by
  sorry
