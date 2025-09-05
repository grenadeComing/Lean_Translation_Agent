import Mathlib

/-!
Let M and N be smooth manifolds and let f ∈ C^0(M,N). Show that f is homotopic to a smooth map M → N.
We state this using ModelWithCorners I J over ℝ and SmoothManifoldWithCorners instances.
-/

open Topology Manifold

variables {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variables {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F]
variables {M : Type*} {N : Type*}
variables {I : ModelWithCorners ℝ E M} {J : ModelWithCorners ℝ F N}
variables [SmoothManifoldWithCorners I M] [SmoothManifoldWithCorners J N]

/-- If f : M → N is continuous, then f is homotopic to some smooth map g : M → N. -/
theorem continuous_map_homotopic_to_smooth (f : M → N) (hf : Continuous f) :
  ∃ (g : M → N) (hg : Continuous g), Smooth I J g ∧ Homotopic (ContinuousMap.mk f hf) (ContinuousMap.mk g hg) := by sorry
