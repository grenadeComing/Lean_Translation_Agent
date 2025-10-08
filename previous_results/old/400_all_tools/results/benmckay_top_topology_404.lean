import Mathlib
open Set Filter Function
open Topology

/-- Let X Y be topological spaces, Y is T2 (Hausdorff). Let f : X → Y be a continuous bijection. Then the inverse map (Equiv.ofBijective f hf).symm : Y → X is continuous. -/
theorem continuous_symm_of_equiv_of_continuous_tac_10505 {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [T2Space Y] (f : X → Y) (hf : Bijective f) (hf' : Continuous f) :
  Continuous (Equiv.ofBijective f hf).symm := by sorry
