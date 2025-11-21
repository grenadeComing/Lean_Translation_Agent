import Mathlib

open Set Topology
open scoped Topology

/-- Let M and N be smooth manifolds over a nontrivially normed field 𝕜 with model spaces E and F.
Let f : M → N be continuous. Then there exists a smooth map g : M → N and a continuous
homotopy H : (I × M) → N from f to g, where I = Icc (0:𝕜) 1. -/
variables {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variables {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variables {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variables {M : Type*} {N : Type*}
variables [TopologicalSpace M] [TopologicalSpace N]
variables [ChartedSpace (ModelWithCorners 𝕜 E) M] [ChartedSpace (ModelWithCorners 𝕜 F) N]
variables [SmoothManifoldWithCorners (ModelWithCorners 𝕜 E) M]
variables [SmoothManifoldWithCorners (ModelWithCorners 𝕜 F) N]

theorem exists_smooth_map_and_continuous_homotopy_of_continuous (f : M → N)
  (hf : Continuous f) :
  ∃ (g : M → N) (H : (Icc (0 : 𝕜) (1 : 𝕜) × M) → N),
    Smooth (ModelWithCorners 𝕜 E) (ModelWithCorners 𝕜 F) g ∧
    Continuous (H : _ → _) ∧
    (∀ x, H ((0 : 𝕜), x) = f x) ∧
    (∀ x, H ((1 : 𝕜), x) = g x) := by sorry