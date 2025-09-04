import Mathlib

/-!
Every proper map f : X → Y to a locally compact Hausdorff space Y is a closed map.
We state this with explicit hypotheses: Continuous f and
h_proper : ∀ K : Set Y, IsCompact K → IsCompact (f ⁻¹' K).
-/

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [LocallyCompactSpace Y] [T2Space Y]

theorem proper_map_to_locally_compact_hausdorff_is_closed
  {f : X → Y} (hf : Continuous f)
  (h_proper : ∀ K : Set Y, IsCompact K → IsCompact (f ⁻¹' K)) :
  ∀ s : Set X, IsClosed s → IsClosed (f '' s) := by sorry
