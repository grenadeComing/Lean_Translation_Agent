import Mathlib

/-!
Translate the statement:

Take a group action on a metric space X by a group of isometries Γ.  The quotient space is a metric space,
under the quotient metric d(\bar{x},\bar{y}) = inf_{g ∈ Γ} d(g x, y), so that the metric space topology
agrees with the quotient topology.

We formalise the statement: for the orbit relation r(x,y) := ∃ g, g • x = y one can put a metric on the
quotient by r by setting dist([x],[y]) := inf_{g : Γ} dist (g • x) y, and the resulting metric topology
coincides with the quotient topology.
-/

variable {X : Type _} [MetricSpace X]
variable {Γ : Type _} [Group Γ] [MulAction Γ X]

/-- The orbit relation for a group action. -/
def orbit_rel (x y : X) : Prop := ∃ g : Γ, g • x = y

/-- The quotient type of X by the orbit relation. We package the relation as a setoid. -/
def orbit_setoid : Setoid X :=
  { r := orbit_rel,
    iseqv :=
      ⟨
        -- reflexive
        by
          intro x; use (1 : Γ); simp [one_smul],
        -- symmetric
        by
          intros x y ⟨g, h⟩; use g⁻¹; simp [mul_smul, ←h],
        -- transitive
        by
          intros x y z ⟨g₁, h1⟩ ⟨g₂, h2⟩; use g₂ * g₁; simp [mul_smul, h1, h2]
      ⟩ }

/-- The quotient type (orbits). -/
def orbit_quotient : Type _ := Quotient (orbit_setoid : Setoid X)

/-- Predicates expressing that the quotient carries the metric induced by the action of Γ by isometries.
    We state existence of a metric instance on the quotient whose distance on representatives is the infimum
    over the group, and that the metric topology equals the quotient topology. -/
theorem quotient_metric_and_topology_of_isometric_action
  (h_isometry : ∀ g : Γ, Isometry (fun x => g • x)) :
  ∃ (d : orbit_quotient → orbit_quotient → ℝ) (metr : MetricSpace orbit_quotient),
    (∀ (x y : X),
      d (Quotient.mk (x : X) : orbit_quotient) (Quotient.mk y) =
        Inf (Set.range fun g : Γ => dist (g • x) y)) ∧
    -- the topology coming from the metric agrees with the quotient topology coming from `Quotient`
    (TopologicalSpace (orbit_quotient) = Quotient.topology (orbit_setoid : Setoid X)) := by sorry
