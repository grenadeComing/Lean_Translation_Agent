import Mathlib
open Set

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {H : Type*} [TopologicalSpace H] {G : Type*} [TopologicalSpace G]
variable {I : ModelWithCorners 𝕜 E H} {J : ModelWithCorners 𝕜 F G}
variable {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
variable {N : Type*} [TopologicalSpace N] [ChartedSpace G N]
variable {n : WithTop ℕ∞}
variable (φ : M → N)

/-- The set of points where a smooth map is a local diffeomorphism is open. -/
theorem isOpen_set_of_isLocalDiffeomorphAt :
  IsOpen {x : M | IsLocalDiffeomorphAt I J n φ x} := by sorry
