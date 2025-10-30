import Mathlib

-- Translation skeleton: prove that Y is compact in the quotient topology given
-- f : X → Y surjective and a compact K ⊆ X with f '' K = Y.
-- Note: this is a placeholder (proof omitted).
theorem benmckay_top_continuity_478 (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) (h_surj : Function.Surjective f) (K : Set X) (hK : IsCompact K) :
  IsCompact (Set.univ : Set Y) := by
  sorry
