import Mathlib

/-!
Exercise: Show that every locally compact Hausdorff space is completely regular.
This file states the theorem; the proof is omitted (sorry) as requested.
-/

theorem locally_compact_t2_implies_completely_regular (X : Type _) [TopologicalSpace X]
  [LocallyCompactSpace X] [T2Space X] : CompletelyRegularSpace X := by
  -- Proof omitted
  sorry
