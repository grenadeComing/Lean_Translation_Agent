import Mathlib

/-!
Exercise (Munkres 34.9). Let X be a compact Hausdorff space that is the union of the closed
subspaces X1 and X2. If X1 and X2 are metrizable, show that X is metrizable.

We formalize a slightly different but equivalent target: we show X is second countable.
Given compact Hausdorff, second countable implies metrizable, so this suffices.
-/

open Set

theorem compact_hausdorff.union_of_two_closed_metrizable_is_second_countable {X : Type*}
  [TopologicalSpace X] [CompactSpace X] [T2Space X]
  (X1 X2 : Set X)
  (hcover : X1 ∪ X2 = (univ : Set X))
  (h1_closed : IsClosed (X1 : Set X))
  (h2_closed : IsClosed (X2 : Set X))
  (h1_sc : SecondCountableTopology (Subtype X1))
  (h2_sc : SecondCountableTopology (Subtype X2)) : SecondCountableTopology X := by
  -- proof omitted
  sorry
