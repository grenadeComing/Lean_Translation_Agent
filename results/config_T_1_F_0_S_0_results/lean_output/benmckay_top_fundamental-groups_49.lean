import Mathlib

/-- Let M be a smooth manifold and let x : [0,1] → M be a path.
    Then x is homotopic relative to {0,1} to a smooth path. -/
theorem exists_smooth_path_homotopic_rel_endpoints
  {M : Type*} {H : Type*} {E : Type*} (I : ModelWithCorners ℝ E H)
  [TopologicalSpace M] [ChartedSpace H M] [SmoothManifoldWithCorners I M]
  {x : Set.Icc (0 : ℝ) 1 → M} (hx : Continuous x) :
  ∃ (y : Set.Icc (0 : ℝ) 1 → M),
    (SmoothOn I (fun t => y t) (Set.Icc (0 : ℝ) 1)) ∧
    (HomotopicWith (Set.Icc (0 : ℝ) 1) {0, 1} x y) := by sorry