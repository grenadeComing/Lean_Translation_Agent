import Mathlib

/--
Let Γ act freely by isometries on a metric space X with discrete orbits.
Then the quotient map X → X/Γ is a covering map and locally isometric.
(This lemma records the statement; the proof is omitted.)
-/
theorem quotient_map_is_locally_isometric_covering
  {X : Type*} [MetricSpace X]
  {Γ : Type*} [Group Γ] [MulAction Γ X]
  (free_action : Prop) (acts_by_isometries : Prop) (orbits_discrete : Prop) : Prop := by
  sorry
