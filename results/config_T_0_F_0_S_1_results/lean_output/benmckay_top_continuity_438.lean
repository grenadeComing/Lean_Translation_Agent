import Mathlib

/-!
Corrected/formalised statement related to:
"Let f : X → Y be a surjective map, where X is a metric space. Prove that the quotient topology on Y induced by f arises from a metric on Y."

As stated above, the assertion that every quotient of a metric space (by an arbitrary surjection)
is metrizable is false in general. The following file records the standard construction of a
(pseudo)metric on Y obtained by taking the infimum of distances between points of the fibres
and states the (true) consequence that this defines a pseudometric on Y which makes f
nonexpansive (hence continuous). From this it follows that the topology coming from that
pseudometric is coarser than the quotient (coinduced) topology; equality needs additional
hypotheses and is not true in general.

We only state the corrected/true facts (no proofs).
-/

variable {X Y : Type*} [MetricSpace X]

open Set

theorem benmckay_top_continuity_438 (f : X → Y) (hf : Surjective f) :
  ∃ (d : Y → Y → ℝ),
    -- d is a pseudometric on Y (nonnegativity, symmetry, zero on diagonal, triangle inequality)
    (∀ y y', 0 ≤ d y y') ∧
    (∀ y y', d y y' = d y' y) ∧
    (∀ y, d y y = 0) ∧
    (∀ y y' y'', d y y'' ≤ d y y' + d y' y'') ∧
    -- f is nonexpansive for this pseudometric: distances of images are ≤ distances in X
    (∀ x x', d (f x) (f x') ≤ dist x x') := by sorry
