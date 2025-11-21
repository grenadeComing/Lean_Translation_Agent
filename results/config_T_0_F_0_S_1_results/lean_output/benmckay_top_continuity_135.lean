import Mathlib

open Set

-- The user-provided statement (translated). NOTE: this statement is not correct as written
-- (the Hausdorff/T2 hypothesis belongs on the target space Y, not on the source X).
lemma benmckay_top_continuity_135 {X Y : Type _} [TopologicalSpace X] [T2Space X] [TopologicalSpace Y]
  {f g : X → Y} (hf : Continuous f) (hg : Continuous g) (s : Set X) (hs : IsDense s)
  (h : ∀ x ∈ s, f x = g x) : f = g := by sorry

-- Corrected version: the target space Y should be Hausdorff.
lemma continuous_eq_on_dense_of_t2 {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]
  {f g : X → Y} (hf : Continuous f) (hg : Continuous g) {s : Set X} (hs : IsDense s)
  (h : ∀ x ∈ s, f x = g x) : f = g := by sorry
