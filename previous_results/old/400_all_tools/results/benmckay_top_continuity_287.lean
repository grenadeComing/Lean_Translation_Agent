import Mathlib
open Filter Topology Function Set
open Prod (fst snd)

/-- Let f : X → Y be a continuous map to a Hausdorff space Y. Prove that f is proper iff (a) every fiber f^{-1}(y) is compact, and (b) f is a closed map. Translate this statement into Lean4 (Mathlib4) as a theorem statement (no proof), importing Mathlib and ending the statement with `:= by sorry`. Use names IsProperMap, IsCompact, IsClosedMap, Continuous, T2Space. Save as a theorem named is_proper_map_iff_fibers_compact_and_closed. -/
theorem isProperMap_iff_isCompact_and_isClosedMap {f : X → Y} [TopologicalSpace X]
    [TopologicalSpace Y] [T2Space Y] (hf : Continuous f) :
    IsProperMap f ↔ (∀ y, IsCompact (f ⁻¹' {y})) ∧ IsClosedMap f := by sorry
