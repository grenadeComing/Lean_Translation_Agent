import Mathlib
open Filter Topology Function Set
open Prod (fst snd)

/-- Let f : X → Y be a continuous map to a Hausdorff space Y. Prove that f is proper iff both (a) every fiber f^{-1}(y) is compact, and (b) f is a closed map. -/
theorem isProperMap_iff_isCompact_fiber_and_isClosedMap {X Y : Type*} [TopologicalSpace X]
    [TopologicalSpace Y] [T2Space Y] {f : X → Y} (hf : Continuous f) :
    IsProperMap f ↔ (∀ y, IsCompact (f ⁻¹' {y})) ∧ IsClosedMap f :=
by sorry
