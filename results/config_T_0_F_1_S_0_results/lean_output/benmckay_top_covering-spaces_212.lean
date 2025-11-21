import Mathlib

variable {Γ : Type*} [Group Γ] {X : Type*} [MetricSpace X]
variable (act : Γ → X → X) (act_one : ∀ x, act 1 x = x)
variable (act_mul : ∀ g h x, act (g * h) x = act g (act h x))
variable (h_isometry : ∀ γ, Isometry (act γ))

/-- The action is free: only the identity fixes a point. -/
def free_action : Prop :=
  ∀ γ x, act γ x = x → γ = 1

/-- The orbit of a point as a set. -/
def orbit_set (x : X) : Set X := { y | ∃ γ, y = act γ x }

/-- Each orbit is discrete in the metric sense: every point of an orbit has a ball
    meeting the orbit only at that point. -/
def discrete_orbits : Prop :=
  ∀ x y, y ∈ orbit_set act x → ∃ ε : ℝ, 0 < ε ∧ ∀ z, z ∈ orbit_set act x → dist z y < ε → z = y

/-- The group action is a covering action: for each x there is an ε such that the
    ε-ball about x has pairwise disjoint translates under distinct group elements. -/
def covering_action : Prop :=
  ∀ x, ∃ ε : ℝ, 0 < ε ∧ ∀ γ, γ ≠ 1 → ∀ y, dist y x < ε → ¬ (dist (act γ y) x < ε)

/-- For an action by isometries, the action is a covering action iff it is
    free and has discrete orbits. -/
theorem covering_action_iff_free_and_discrete_orbits :
  covering_action act ↔ (free_action act ∧ discrete_orbits act) := by sorry
