-- Translation of the statement: Let X be a Hausdorff space and Y any topological space.
-- If continuous maps f, g : X → Y agree on a dense subset D ⊆ X, then f = g.
-- Note: A full proof is not provided here; this file provides a placeholder statement.

import Mathlib

open Set

theorem benmckay_top_continuity_135
  {X Y : Type} [TopologicalSpace X] [TopologicalSpace Y]
  [T2Space Y]
  (D : Set X) (hD : Dense D)
  (f g : X → Y) (hf : Continuous f) (hg : Continuous g)
  (hfg : ∀ x ∈ D, f x = g x) : f = g := by
  -- proof omitted
  sorry
