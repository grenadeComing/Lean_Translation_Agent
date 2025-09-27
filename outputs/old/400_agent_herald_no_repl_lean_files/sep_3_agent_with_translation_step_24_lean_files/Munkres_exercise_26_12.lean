import Mathlib

open Set

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]

/-- Let p : X → Y be a closed continuous surjective map such that p^{-1}({y}) is compact for each y ∈ Y.
    (Such a map is called a perfect map.) Show that if Y is compact, then X is compact. -/
theorem perfect_map_compact (p : X → Y) (h_cont : Continuous p) (h_closed : IsClosedMap p)
  (h_surj : Function.Surjective p) (h_fiber : ∀ y, IsCompact (p ⁻¹' ({y} : Set Y))) (hY : IsCompact (univ : Set Y)) :
  IsCompact (univ : Set X) := by sorry
