import Mathlib
open Topology

def is_proper {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] (f : X → Y) : Prop :=
  Continuous f ∧ ∀ s : Set X, IsCompact s → IsCompact (f ⁻¹' s)

 theorem proper_map_is_closed_map {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [LocallyCompactSpace Y] [T2Space Y] (f : X → Y) (hf : is_proper f) : IsClosedMap f := by sorry