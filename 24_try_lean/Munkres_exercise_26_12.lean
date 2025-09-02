import Mathlib

/-!
Exercise: Let p : X → Y be a closed continuous surjective map such that p^{-1}({y}) is compact for each y ∈ Y.
Show that if Y is compact, then X is compact. (Such a map is called a perfect map.)
-/

open Set

theorem perfect_map.compact_of_compact_target {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  (p : X → Y)
  (h_closed : IsClosedMap p)
  (h_cont : Continuous p)
  (h_surj : Function.Surjective p)
  (h_fib : ∀ y : Y, IsCompact (p ⁻¹' ({y} : Set Y)))
  (hY : CompactSpace Y) : CompactSpace X := by sorry
