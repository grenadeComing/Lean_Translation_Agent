import Mathlib

/-- If X and Z are simply connected covering spaces of Y, then they are homeomorphic over Y. -/
theorem universal_cover_unique_up_to_iso {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [TopologicalSpace Z] {f : X → Y} {g : Z → Y} (hf : IsCoveringMap f) (hg : IsCoveringMap g)
  (hX : SimplyConnectedSpace X) (hZ : SimplyConnectedSpace Z) :
  ∃! (h : Homeomorph X Z), g ∘ (h : X → Z) = f := by sorry
