import Mathlib

open Pointwise Set

theorem proper_local_diffeomorphism_is_covering_map
{𝕜 : Type*} [NontriviallyNormedField 𝕜]
{E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
{F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
{H : Type*} [TopologicalSpace H] {G : Type*} [TopologicalSpace G]
(I : ModelWithCorners 𝕜 E H) (J : ModelWithCorners 𝕜 F G)
{M : Type*} [TopologicalSpace M] [ChartedSpace H M]
{N : Type*} [TopologicalSpace N] [ChartedSpace G N]
(n : WithTop ℕ∞) (f : M → N)
[ConnectedSpace N]
(h : IsLocalDiffeomorph I J n f) (hp : IsProperMap f) :
IsCoveringMap f := by sorry
