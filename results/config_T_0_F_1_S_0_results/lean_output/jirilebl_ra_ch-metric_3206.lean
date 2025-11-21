import Mathlib

variable (X : Type*) [MetricSpace X]

/-- Bounded continuous real-valued functions on X. -/
structure Cb where
  to_fun : X → ℝ
  continuous_to_fun : Continuous to_fun
  bounded : ∃ M : ℝ, 0 ≤ M ∧ ∀ x, abs (to_fun x) ≤ M

/-- Supremum (uniform) distance on bounded continuous functions. -/
noncomputable def sup_dist (f g : Cb X) : ℝ := SupSet.sSup (Set.range fun x => abs (f.to_fun x - g.to_fun x))

/-- The space of bounded continuous functions with the supremum distance is a metric space. -/
noncomputable instance metric_space_Cb : MetricSpace (Cb X) := by sorry

/-- Convergence in the sup metric is equivalent to uniform convergence. -/
theorem uniform_iff_sup_converge (u : ℕ → Cb X) (f : Cb X) :
  (∀ ε : ℝ, 0 < ε → ∃ N : ℕ, ∀ n ≥ N, ∀ x : X, abs ((u n).to_fun x - f.to_fun x) < ε) ↔
  (∀ ε : ℝ, 0 < ε → ∃ N : ℕ, ∀ n ≥ N, sup_dist X (u n) f < ε) := by sorry
