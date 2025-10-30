import Mathlib

/--
 Whitney approximation: any continuous map between smooth manifolds is homotopic to a smooth map.
-/
theorem continuous_to_smooth_homotopic
  {M N : Type*} [TopologicalSpace M] [TopologicalSpace N]
  [SmoothManifold M] [SmoothManifold N]
  (f : C(M,N)) :
  ∃ g : C∞(M,N), f.Homotopic g := by
  sorry
