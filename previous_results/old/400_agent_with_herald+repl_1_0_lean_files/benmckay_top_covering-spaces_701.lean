import Mathlib

/-- Let X be a topological space and p : ℝ → X a covering map. Assume X is nonempty and connected.
    Then X is homeomorphic to either ℝ or the additive circle AddCircle 1 (i.e. ℝ / ℤ). -/
theorem covering_spaces_of_R {X : Type _} [TopologicalSpace X] (p : ℝ → X) (hp : IsCoveringMap p)
  (hne : Nonempty X) [ConnectedSpace X] :
  Nonempty (Homeomorph X ℝ) ∨ Nonempty (Homeomorph X (AddCircle (1 : ℝ))) :=
  by sorry
