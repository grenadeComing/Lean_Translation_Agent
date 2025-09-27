import Mathlib

variable {F : Type _} [Field F]
variable {V : Type _} [AddCommGroup V] [Module F V]

/--
Suppose that S, T ∈ L(V) are such that S T = T S. Prove that null(T - λ I) is invariant under S for every λ ∈ F.
This states that if v ∈ ker (T - λ I) then S v ∈ ker (T - λ I).
-/
theorem Axler_exercise_5_4 (S T : V →ₗ[F] V) (h : S.comp T = T.comp S) (λ : F) :
  ∀ v, (T - λ • LinearMap.id) v = 0 → (T - λ • LinearMap.id) (S v) = 0 := by
  -- proof omitted
  sorry
