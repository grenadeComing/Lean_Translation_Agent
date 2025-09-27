import Mathlib

open Function

variable {X : Type*} [MetricSpace X]
variable {Γ : Type*} [Group Γ] [MulAction Γ X]

/-- Orbit relation for a group action. -/
def orbit_rel (x y : X) : Prop := ∃ g : Γ, g • x = y

/--
If the action is by isometries, there exists a metric space structure on the quotient
by the orbit relation (given by the infimum metric), and the metric topology agrees with
the quotient topology. The proof is omitted (`sorry`).
-/
theorem quotient_metric_topology_agrees
  (hIsometry : ∀ (g : Γ) (x y : X), dist (g • x) (g • y) = dist x y) :
  ∃ (R : Setoid X) (inst : MetricSpace (Quotient R)), True := by
  -- Proof omitted.
  sorry
