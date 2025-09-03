import Mathlib

/-!
# Munkres exercise 33.7

Show that every locally compact Hausdorff space is completely regular.
-/

theorem locally_compact_t2_completely_regular {X : Type _} [TopologicalSpace X]
  [LocallyCompactSpace X] [T2Space X] : CompletelyRegularSpace X := by sorry
