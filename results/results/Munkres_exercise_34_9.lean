import Mathlib

/-!
Munkres exercise 34.9 (translated):
If X is a compact Hausdorff space and X = s1 ∪ s2 where s1 and s2 are closed and metrizable,
then X is metrizable.  Here we state metrizability by asserting that X has a
second countable topology; in the presence of compact Hausdorff this implies metrizability.
-/

theorem Munkres_exercise_34_9 {X : Type _} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  (s1 s2 : Set X) (hs1 : IsClosed s1) (hs2 : IsClosed s2) (hcover : s1 ∪ s2 = (Set.univ : Set X))
  [MetricSpace (Subtype s1)] [MetricSpace (Subtype s2)] : SecondCountableTopology X := by
  sorry
