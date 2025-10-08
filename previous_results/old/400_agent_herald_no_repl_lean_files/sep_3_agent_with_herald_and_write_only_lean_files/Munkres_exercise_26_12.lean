import Mathlib

/-!
Exercise (Munkres 26.12).
Let p : X → Y be a closed continuous surjective map such that p^{-1}({y}) is compact, for each y ∈ Y.
(Such a map is called a perfect map.) Show that if Y is compact, then X is compact.
-/

variables {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

/-- A closed continuous surjective map with compact fibers (a perfect map) sends compact spaces
to compact spaces. -/
theorem perfect_map_compact (p : X → Y) (hcont : Continuous p) (hclosed : IsClosedMap p)
  (hsurj : Function.Surjective p) (hfib : ∀ y : Y, IsCompact (p ⁻¹' ({y} : Set Y)))
  [CompactSpace Y] : CompactSpace X := by sorry
