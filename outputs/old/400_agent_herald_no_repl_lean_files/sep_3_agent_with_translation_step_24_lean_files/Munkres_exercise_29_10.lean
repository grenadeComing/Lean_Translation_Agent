import Mathlib
open Set Filter Topology

variable {X : Type _} [TopologicalSpace X] [T2Space X]

/-- If X is Hausdorff and locally compact at x (there exists an open neighborhood W of x with compact closure), then for every neighborhood U of x there is a neighborhood V of x whose closure is compact and contained in U. -/
theorem Munkres_exercise_29_10 {x : X}
  (h_local : ∃ W, W ∈ 𝓝 x ∧ IsCompact (closure (W : Set X))) :
  ∀ U : Set X, U ∈ 𝓝 x → ∃ V : Set X, V ∈ 𝓝 x ∧ IsCompact (closure V) ∧ closure V ⊆ U := by sorry
