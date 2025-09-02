import Mathlib

variable {K : Type*} [Field K]
variable {V : Type*} [AddCommGroup V] [Module K V]
variable (T : V →ₗ[K] V)

/-- If a finite family of submodules is invariant under a linear map T,
then the span (sum) of the family is invariant under T. -/
theorem Axler_exercise_5_1 {m : Nat} (Us : Fin m → Submodule K V)
  (h : ∀ i (u : V), u ∈ Us i → T u ∈ Us i) :
  ∀ x, x ∈ Submodule.span K (⋃ i, (Us i : Set V)) → T x ∈ Submodule.span K (⋃ i, (Us i : Set V)) := by sorry
