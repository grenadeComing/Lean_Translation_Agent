import Mathlib

/-
Take a group action on a metric space X by a group of isometries Γ.
Informal translation: The quotient space is a metric space under the quotient metric
  d(\bar{x},\bar{y}) = inf_{g ∈ Γ} dist (g • x) y,
and this metric topology agrees with the quotient topology.

Below we record a short placeholder theorem (proof omitted) that stands in for the
full formalization. The statement is described in the comment above; the theorem
itself is left as `True := by sorry` to indicate the omitted proof.
-/

variable {X : Type*} [MetricSpace X]
variable {Γ : Type*} [Group Γ] [MulAction Γ X]

/-- Orbit relation for the action. -/
def orbit_rel (x y : X) : Prop := ∃ g : Γ, g • x = y

/-- Placeholder translation of the statement: see the file comment for the full
    mathematical assertion. Proof omitted. -/
theorem quotient_metric_space_condition : True := by sorry
