import Mathlib
open Filter Topology Function Set
open Prod (fst snd)

/-- Prove that if X is compact and f : X -> Y is continuous, then f is closed. -/
theorem isClosed_of_continuous {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
    [CompactSpace X] {f : X → Y} (hf : Continuous f) : IsClosedMap f := by sorry
