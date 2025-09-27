import Mathlib
open Filter Topology Function Set
open Prod (fst snd)

/-- Prove that every continuous map $f \colon X \to Y$ from a compact space $X$ to a Hausdorff space $Y$ is proper. -/
theorem isProperMap_of_isCompact_of_t2 {X Y : Type*} [TopologicalSpace X]
    [TopologicalSpace Y] [CompactSpace X] [T2Space Y] (f : X → Y) :
    Continuous f → IsProperMap f := by sorry
