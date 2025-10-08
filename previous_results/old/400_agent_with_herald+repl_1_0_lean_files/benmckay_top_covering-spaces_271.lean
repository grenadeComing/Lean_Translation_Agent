import Mathlib

/-
Take a group action on a metric space X by a group of isometries Γ.
We state that the quotient space carries a metric given by
  d(\bar x,\bar y) = Inf (range fun g => dist (g • x) y),
so that the metric space topology agrees with the quotient topology.

This file only gives the statement as a Lean declaration (no proof):
-/

variables {Γ : Type*} [Group Γ] {X : Type*} [MetricSpace X] [MulAction Γ X]

/-- Main statement (no proof): there is a metric structure on the quotient by the orbit relation
    when the action is by isometries. -/
theorem benmckay_top_covering_spaces_271
  (h_isometry : ∀ g : Γ, Isometry (fun x : X => g • x))
  (h_equiv : Equivalence (fun x y : X => ∃ g : Γ, g • x = y)) :
  Nonempty (MetricSpace (Quotient (Setoid.mk (fun x y : X => ∃ g : Γ, g • x = y) h_equiv))) := by
  -- The metric is defined on representatives by
  --   d([x],[y]) = Inf (range fun g => dist (g • x) y)
  -- and one shows this induces the quotient topology.
  sorry
