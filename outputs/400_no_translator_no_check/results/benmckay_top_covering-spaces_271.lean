import Mathlib

/-!
Translation:
Let X be a pseudo metric space, and G a group acting on X by isometries.
Then the quotient set Quotient (MulAction.orbitRel G X) admits the quotient metric
d([x],[y]) = sInf (range fun g => dist (g • x) y).
We only state existence of the distance function; proof omitted.
-/

open Set

theorem benmckay_top_covering_spaces_271 {X : Type _} [PseudoMetricSpace X]
  {G : Type _} [Group G] [MulAction G X]
  (h_iso : ∀ g : G, Isometry (fun x : X => g • x)) :
  ∃ (dquot : Quotient (MulAction.orbitRel G X) → Quotient (MulAction.orbitRel G X) → ℝ),
    ∀ x y : X,
      dquot (Quotient.mk (MulAction.orbitRel G X) x) (Quotient.mk (MulAction.orbitRel G X) y)
        = InfSet.sInf (Set.range fun g : G => Dist.dist (g • x) y) := by
  -- proof omitted
  sorry
