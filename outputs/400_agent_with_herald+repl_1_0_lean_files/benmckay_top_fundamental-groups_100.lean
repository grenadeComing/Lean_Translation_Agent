import Mathlib

open Set

/-- Let X be a topological space and x : [0,1] → X a continuous path (continuous on the closed interval).
    Let x̄(t) = x(1 - t) be the reverse path and x * x̄ the usual concatenation defined on [0,1].
    There exists a homotopy H : [0,1] × [0,1] → X (continuous on the square) witnessing that x * x̄
    is homotopic relative to {0,1} to the constant loop at x(0). Here we state the existence of such
    a continuous homotopy with the required endpoint conditions. -/
theorem path_concat_reverse_homotopic_constant
  (X : Type*) [TopologicalSpace X]
  (x : ℝ → X) (hx : ContinuousOn x (Set.Icc (0 : ℝ) (1 : ℝ))) :
  ∃ (H : ℝ × ℝ → X),
    ContinuousOn H (Set.prod (Set.Icc (0 : ℝ) (1 : ℝ)) (Set.Icc (0 : ℝ) (1 : ℝ))) ∧
    -- H(·, 0) = x * x̄ (the concatenation loop)
    (∀ t ∈ Set.Icc (0 : ℝ) (1 : ℝ),
      H (t, 0) = if t ≤ (1 / 2 : ℝ) then x (2 * t) else x (2 - 2 * t)) ∧
    -- H(·, 1) = constant loop at x 0
    (∀ t ∈ Set.Icc (0 : ℝ) (1 : ℝ), H (t, 1) = x 0) ∧
    -- endpoints fixed for all s: H(0, s) = x 0 and H(1, s) = x 0
    (∀ s ∈ Set.Icc (0 : ℝ) (1 : ℝ), H (0, s) = x 0) ∧
    (∀ s ∈ Set.Icc (0 : ℝ) (1 : ℝ), H (1, s) = x 0) := by sorry
