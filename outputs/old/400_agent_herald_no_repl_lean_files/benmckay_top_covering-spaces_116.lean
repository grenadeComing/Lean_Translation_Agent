import Mathlib

open Manifold

/-- If f : P → Q is a proper local diffeomorphism between manifolds without boundary
    and Q is connected, then f is a covering map. -/
theorem proper_local_diffeomorph_is_covering {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  {P Q : Type*} [TopologicalSpace P] [TopologicalSpace Q]
  {I : ModelWithCorners 𝕜 E P} {J : ModelWithCorners 𝕜 E Q}
  [SmoothManifoldWithCorners 𝕜 I P] [SmoothManifoldWithCorners 𝕜 J Q]
  (f : P → Q) (h : LocalDiffeomorph I J f) (hp : ProperMap f) (hconn : ConnectedSpace Q) :
  IsCovering f := by sorry
